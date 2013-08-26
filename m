Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56CF1E00282;
	Mon, 26 Aug 2013 00:18:21 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id c50so1409722eek.32
	for <multiple recipients>; Mon, 26 Aug 2013 00:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=UB4AViQ2xKnJR06fpEP6peAt0KKBxCJr+NXRwqvn3hM=;
	b=VEuAcBBFOSdEsHwrHQ4pxZFjOZphRysglBUTJzBz7652Rdw+4pZZSo7RKnSFyU2gCA
	3y5OUNRHk0cG8fpdcG1ZX/x0790t5urjMz6QCUklDCGUb0TrFwXh9ykJKpACS4eNGBdB
	QSCO+hIGBtcl1VV+GBIdskHmbQvfUZlP4fWkZ2N4qZVbPvzBIt5gqevvpUzn9cThYWgF
	SO3WNolS6AG3ddeL9yHtzftnRbSRmC+o61/3p8TjE37ABT7mneS92fusF1NGL5ZFFOKq
	xc3HNeuBG2z7W80a7o6+fWGi6SdDKSdZ+GLLvG9jGFfTZHYreO0tNshCUs3rG84Q31yc
	b5qw==
X-Received: by 10.15.77.199 with SMTP id p47mr1286656eey.50.1377501500275;
	Mon, 26 Aug 2013 00:18:20 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	z12sm19175105eev.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 26 Aug 2013 00:18:19 -0700 (PDT)
Date: Mon, 26 Aug 2013 09:19:29 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: mulhern <mulhern@gmail.com>
Message-ID: <20130826071929.GM3544@jama>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
	<349e64db470d1dd1b87a1ee1ac45dbf698a88f2c.1377479358.git.mulhern@yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <349e64db470d1dd1b87a1ee1ac45dbf698a88f2c.1377479358.git.mulhern@yoctoproject.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, mulhern@yoctoproject.org
Subject: Re: [PATCH 5/5] Bastille: set Yocto specific questions via config file.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Aug 2013 07:18:22 -0000
X-Groupsio-MsgNum: 15666
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Aaj1jBvBEV7KRjLi"
Content-Disposition: inline

--Aaj1jBvBEV7KRjLi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 25, 2013 at 09:17:12PM -0400, mulhern wrote:
> [YOCTO #3867]
>=20
> The python script, set_required_questions.py reads the list of questions =
and
> answers from the config file and edits the REQUIRE_DISTRO field for those
> questions in the questions file so that it includes "Yocto" if it is not
> already present. This has the effect of causing Bastille, when loading
> questions for the Yocto distribution, to load only those that are answered
> in the existing config file. Under the assumption that the exisitng config
> file contains question/answer pairs that are relevant to the Yocto projec=
t,
> this will cause the interactive question screen to have answers that are
> relevant to the Yocto project.
>=20
> Signed-off-by: mulhern <mulhern@yoctoproject.org>
> ---
>  recipes-security/bastille/bastille_3.2.1.bb        |    3 +
>  .../bastille/files/set_required_questions.py       |  135 ++++++++++++++=
++++++
>  2 files changed, 138 insertions(+)
>  create mode 100755 recipes-security/bastille/files/set_required_question=
s.py
>=20
> diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-securi=
ty/bastille/bastille_3.2.1.bb
> index 8969f6b..094f09c 100644
> --- a/recipes-security/bastille/bastille_3.2.1.bb
> +++ b/recipes-security/bastille/bastille_3.2.1.bb
> @@ -139,6 +139,9 @@ do_install () {
>  	install -m 0644 OSMap/HP-UX.service    ${D}${datadir}/Bastille/OSMap
>  	install -m 0644 OSMap/OSX.bastille    ${D}${datadir}/Bastille/OSMap
>  	install -m 0644 OSMap/OSX.system    ${D}${datadir}/Bastille/OSMap
> +
> +        ${THISDIR}/files/set_required_questions.py ${WORKDIR}/config Que=
stions
> +

Inconsistent whitespace.

>  	install -m 0777 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
> =20
>  	for file in `cat Modules.txt` ; do
> diff --git a/recipes-security/bastille/files/set_required_questions.py b/=
recipes-security/bastille/files/set_required_questions.py
> new file mode 100755
> index 0000000..a432dc5
> --- /dev/null
> +++ b/recipes-security/bastille/files/set_required_questions.py
> @@ -0,0 +1,135 @@
> +#!/usr/bin/env python
> +
> +import argparse, os, shutil, sys, tempfile
> +from os import path
> +
> +
> +
> +def get_config(lines):
> +  """
> +  From a sequence of lines retrieve the question file name, question ide=
ntifier
> +  pairs.
> +  """
> +  for l in lines:
> +    if not l.startswith("#"):
> +      try:
> +        (coord, value) =3D l.split("=3D")
> +        try:
> +          (fname, ident) =3D coord.split(".")
> +          yield fname, ident
> +        except ValueError as e:
> +          raise ValueError("Badly formatted coordinates %s in line %s." =
% (coord, l.strip()))
> +      except ValueError as e:
> +        raise ValueError("Skipping badly formatted line %s, %s" % (l.str=
ip(), e))
> +
> +
> +
> +def check_contains(line, name):
> +  """
> +  Check if the value field for REQUIRE_DISTRO contains the given name.
> +  @param name line The REQUIRE_DISTRO line
> +  @param name name The name to look for in the value field of the line.
> +  """
> +  try:
> +    (label, distros) =3D line.split(":")
> +    return name in distros.split()
> +  except ValueError as e:
> +    raise ValueError("Error splitting REQUIRE_DISTRO line: %s" % e)
> +
> +
> +
> +def add_requires(the_ident, distro, lines):
> +
> +  """
> +  Yield a sequence of lines the same as lines except that where
> +  the_ident matches a question identifier change the REQUIRE_DISTRO so t=
hat
> +  it includes the specified distro.
> +
> +  @param name the_ident The question identifier to be matched.
> +  @param name distro The distribution to added to the questions REQUIRE_=
DISTRO
> +                     field.
> +  @param lines The sequence to be processed.
> +  """
> +  for l in lines:
> +    yield l
> +    if l.startswith("LABEL:"):
> +      try:
> +        (label, ident) =3D l.split(":")
> +        if ident.strip() =3D=3D the_ident:
> +          break
> +      except ValueError as e:
> +        raise ValueError("Unexpected line %s in questions file." % l.str=
ip())
> +  for l in lines:
> +    if l.startswith("REQUIRE_DISTRO"):
> +      if not check_contains(l, distro):
> +        yield l.rstrip() + " " + distro + "\n"
> +      else:
> +        yield l
> +      break;
> +    else:
> +      yield l
> +  for l in lines:
> +    yield l
> +
> +
> +
> +def xform_file(qfile, distro, qlabel):
> +  questions_in =3D open(qfile)
> +  questions_out =3D tempfile.NamedTemporaryFile(delete=3DFalse)
> +  for l in add_requires(qlabel, distro, questions_in):
> +    questions_out.write(l)
> +  questions_out.close()
> +  questions_in.close()
> +  shutil.move(questions_out.name, qfile)
> +
> +
> +
> +def handle_args(parser):
> +  parser.add_argument('config_file',
> +                      help =3D "Configuration file path.")
> +  parser.add_argument('questions_dir',
> +                      help =3D "Directory containing Questions files.")
> +  parser.add_argument('--distro', '-d',
> +                      help =3D "The distribution, the default is Yocto.",
> +                      default =3D "Yocto")
> +  return parser.parse_args()
> +
> +
> +
> +def check_args(args):
> +  args.config_file =3D os.path.abspath(args.config_file)
> +  args.questions_dir =3D os.path.abspath(args.questions_dir)
> +
> +  if not os.path.isdir(args.questions_dir):
> +    raise ValueError("Specified Questions directory %s does not exist or=
 is not a directory." % args.questions_dir)
> +
> +  if not os.path.isfile(args.config_file):
> +    raise ValueError("Specified configuration file %s not found." % args=
=2Econfig_file)
> +
> +
> +
> +def main():
> +  opts =3D handle_args(argparse.ArgumentParser(description=3D"A simple s=
cript that sets required questions based on the question/answer pairs in a =
configuration file."))
> +
> +  try:
> +    check_args(opts)
> +  except ValueError as e:
> +    sys.exit("Fatal error: %s" % e)
> +
> +
> +  try:
> +    config_in =3D open(opts.config_file)
> +    for qfile, qlabel in get_config(config_in):
> +      questions_file =3D os.path.join(opts.questions_dir, qfile + ".txt")
> +      xform_file(questions_file, opts.distro, qlabel)
> +    config_in.close()
> +
> +  except IOError as e:
> +    sys.exit("Fatal error reading config file: %s" % e)
> +  except ValueError as e:
> +    sys.exit("Fatal error: %s" % e)
> +
> +
> +
> +if __name__ =3D=3D "__main__":
> +  main()
> --=20
> 1.7.10.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Aaj1jBvBEV7KRjLi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlIbAYEACgkQN1Ujt2V2gByI2gCfexNwONy0T8QI8sHlgQb4PyU3
UjIAoIpgvDVQvceb1aiNib5sNbs7TJag
=NgEN
-----END PGP SIGNATURE-----

--Aaj1jBvBEV7KRjLi--
