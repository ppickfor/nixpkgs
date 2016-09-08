{ stdenv, fetchFromGitHub, rustPlatform, makeWrapper }:

with rustPlatform;

buildRustPackage rec {
  name = "rainicorn-${version}";
  version = "1.x";

  src = fetchFromGitHub {
    owner = "RustDT";
    repo = "Rainicorn";
    rev = "8661159eeb11b6c717d5ff0509a8ab505b5bed98";
    sha256 = "1m14j58j9i4sbwhjmdb3dkyczs6bibq6j5x50lrmqcsa3n2hhw40";
  };

  depsSha256 = "12pgr8bnzzs2x6q838sxszfrm615469irrbp8vpf1c31wh9r5iyz";


  meta = with stdenv.lib; {
    description = "Rust IDEs.  parse-analysis";
    homepage = https://github.com/RustDT/Rainicorn;
    license = with licenses; [ mit asl20 ];
    maintainers = [ maintainers.globin ];
    platforms = platforms.all;
  };
}
