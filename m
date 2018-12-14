Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A306E009B2; Fri, 14 Dec 2018 08:53:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com
	[209.85.161.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3AE9E008C6
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 08:53:15 -0800 (PST)
Received: by mail-yw1-f43.google.com with SMTP id d16so15061ywa.5
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 08:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=a0oYV2Wp+jWlzlfuremS2KvXGR2a4IYArfqusP2zjCk=;
	b=TOgqlW1vYvR8UG8NIpBk8AYJaI22SoZg0kJ/LmaZhTabyerfumsoAAt5ObFcvgAcBv
	w0z4hOGImYI+/XsiYJrxJYw5Yt/wKSEi4CpVa9/iasEgzvHahTlrEhqAg2I/1GZ1zlUA
	CDoScCtLgNEUBS/EGU/rdSrLzyDqgumq96fFPTUwCGIcemU7H13vusC1nmPks0awafiJ
	bR4w4ho7LkRd/NKHbseh6/HrvVtErBzitrZZJCxTzVOCaNc6BFUBCNLnk7O/c/cf1Mjz
	6BI6UC8DNpNeUp0nI26bjsm7CN7tFG1M/E1qA5nRL7M//kOg9r6E+jUh74171dxmY8ra
	aWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=a0oYV2Wp+jWlzlfuremS2KvXGR2a4IYArfqusP2zjCk=;
	b=IEKooL1XPbdQeMS4W0e6EVl0NwHzP9yTOt39AOTeTD5hBFgB+fAAtqLpf/E/PItUh3
	xRi46GVGHitrMN4eUZntjj5vBIIozycpdBiUzMOhqq0MSfazL4osk/Ld65jAjO8x5YrO
	Di98zMfZsWo+4m76ftHDKtk+1/vidddL2E/M8sEldn0b3Kzw5U3kiNMBNovfh1OzjncF
	jJS2KDCOUkVVcMxK+j3hv/bGohEKkIkTnMBMCNWWj95fBB2l8KR4cs7OIyvbmWlKGcLx
	qD+qqN/6FAvLt4UxVmyznk4RsxL2XgL51ZAQhtSMAXGSwfUTODbC1rISWjGdrYOlfzeH
	+4JA==
X-Gm-Message-State: AA+aEWb++6jjH3nyRm46Kw/crXTTjgP6vQt574XvcyE37jRG/AeHZBUT
	MMlx7urqs0nVBWqd13iMUvVM6FhbkB8HRNXP0jwnxg==
X-Google-Smtp-Source: AFSGD/WspoZgea/lYsSbY/KCbcS8hnPfXIrhIqXiCjREz6WKB8IOphI7sAHjRo6JxOJpX3jJ7wTNGRZSWYkVT1u4QBA=
X-Received: by 2002:a81:c902:: with SMTP id o2mr3731204ywi.208.1544806395084; 
	Fri, 14 Dec 2018 08:53:15 -0800 (PST)
MIME-Version: 1.0
References: <20181214160747.4732-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20181214160747.4732-1-richard.purdie@linuxfoundation.org>
From: =?UTF-8?Q?Anibal_Lim=C3=B3n?= <limon.anibal@gmail.com>
Date: Fri, 14 Dec 2018 10:53:03 -0600
Message-ID: <CAPS-YPB=xGyuHAijRNpXtr_KWGJmpox8bfGnpvEV+J7P13K+zA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][auh] upgradehelper: Replace do_checkpkg usage with direct tinfoil calls
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
X-List-Received-Date: Fri, 14 Dec 2018 16:53:17 -0000
Content-Type: multipart/alternative; boundary="0000000000006d021c057cfe4403"

--0000000000006d021c057cfe4403
Content-Type: text/plain; charset="UTF-8"

LGTM,

Anibal

On Fri, Dec 14, 2018 at 10:08 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> The code in distrodata.bbclass related to the do_checkpkg task is rather
> dated, has holes in it (ignoring some recipes) and has horrible locking
> and csv related issues.
>
> We should use modern APIs such as tinfoil to make the calls we need
> directly
> against bitbake, cutting out the middleman and clarifing the code.
>
> This change imports the bits of distrodata.bbclass this code needs in their
> current form. Its likely it can be further improved from here but this is a
> good start and appears to function as before, with slightly wider recipe
> coverage as some things skipped by distrodata are not skipped here (images,
> pieces of gcc, nativesdk only recipes).
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  upgradehelper.py | 148 ++++++++++++++++++++++++++---------------------
>  1 file changed, 82 insertions(+), 66 deletions(-)
>
> diff --git a/upgradehelper.py b/upgradehelper.py
> index 8fb27d3..7ad4917 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -59,6 +59,25 @@ from statistics import Statistics
>  from steps import upgrade_steps
>  from testimage import TestImage
>
> +if not os.getenv('BUILDDIR', False):
> +    E(" You must source oe-init-build-env before running this script!\n")
> +    E(" It is recommended to create a fresh build directory with it:\n")
> +    E(" $ . oe-init-build-env build-auh\n")
> +    exit(1)
> +
> +import shutil
> +# Use the location of devtool to find scriptpath and hence bb/oe libs
> +scripts_path = os.path.abspath(os.path.dirname(shutil.which("devtool")))
> +sys.path = sys.path + [scripts_path + '/lib']
> +import scriptpath
> +scriptpath.add_bitbake_lib_path()
> +scriptpath.add_oe_lib_path()
> +
> +import bb.tinfoil
> +import oe.recipeutils
> +from bb.utils import vercmp_string
> +
> +
>  help_text = """Usage examples:
>  * To upgrade xmodmap recipe to the latest available version:
>      $ upgrade-helper.py xmodmap
> @@ -599,59 +618,6 @@ class UniverseUpdater(Updater):
>              I(" Removing tmp directory ...")
>              shutil.rmtree(self.base_env['TMPDIR'])
>
> -    def _check_upstream_versions(self):
> -        I(" Fetching upstream version(s) ...")
> -
> -        if self.recipes:
> -            recipe = " ".join(self.recipes)
> -        else:
> -            recipe = 'universe'
> -
> -        try:
> -            self.bb.checkpkg(recipe)
> -        except Error as e:
> -            for line in e.stdout.split('\n'):
> -                if line.find("ERROR: Task do_checkpkg does not exist") !=
> -1:
> -                    C(" \"distrodata.bbclass\" not inherited. Consider
> adding "
> -                      "the following to your local.conf:\n\n"
> -                      "INHERIT =+ \"distrodata\"\n")
> -                    exit(1)
> -
> -    def _parse_checkpkg_file(self, file_path):
> -        import csv
> -
> -        pkgs_list = []
> -
> -        with open(file_path, "r") as f:
> -            reader = csv.reader(f, delimiter='\t')
> -            for row in reader:
> -                if reader.line_num == 1: # skip header line
> -                    continue
> -
> -                pn = row[0]
> -                cur_ver = row[1]
> -                if self.args.to_version:
> -                    next_ver = self.args.to_version
> -                else:
> -                    next_ver = row[2]
> -                status = row[11]
> -                revision = row[12]
> -                maintainer = row[14]
> -                no_upgrade_reason = row[15]
> -
> -                if status == 'UPDATE' and not no_upgrade_reason:
> -                    pkgs_list.append((pn, cur_ver, next_ver, maintainer,
> revision))
> -                else:
> -                    if no_upgrade_reason:
> -                        I(" Skip package %s (status = %s, current version
> = %s," \
> -                            " next version = %s, no upgrade reason = %s)"
> %
> -                            (pn, status, cur_ver, next_ver,
> no_upgrade_reason))
> -                    else:
> -                        I(" Skip package %s (status = %s, current version
> = %s," \
> -                            " next version = %s)" %
> -                            (pn, status, cur_ver, next_ver))
> -        return pkgs_list
> -
>      # checks if maintainer is in whitelist and that the recipe itself is
> not
>      # blacklisted: python, gcc, etc. Also, check the history if the recipe
>      # hasn't already been tried
> @@ -688,16 +654,71 @@ class UniverseUpdater(Updater):
>          return True
>
>      def _get_packages_to_upgrade(self, packages=None):
> -        self._check_upstream_versions()
> -        last_checkpkg_file = os.path.realpath(self.base_env['TMPDIR'] +
> "/log/checkpkg.csv")
>
>          pkgs_list = []
> -        for pkg in self._parse_checkpkg_file(last_checkpkg_file):
> -            # Always do the upgrade if recipes are specified
> -            if self.recipes and pkg[0] in self.recipes:
> -                pkgs_list.append(pkg)
> -            elif self._pkg_upgradable(pkg[0], pkg[2], pkg[3]):
> -                pkgs_list.append(pkg)
> +        with bb.tinfoil.Tinfoil() as tinfoil:
> +            tinfoil.prepare(config_only=False)
> +            recipes = self.recipes
> +            if not recipes:
> +                recipes = tinfoil.all_recipe_files(variants=False)
> +
> +            for fn in recipes:
> +                try:
> +                    if fn.startswith("/"):
> +                        data = tinfoil.parse_recipe_file(fn)
> +                    else:
> +                        data = tinfoil.parse_recipe(fn)
> +                except bb.providers.NoProvider:
> +                    I(" No provider for %s" % fn)
> +                    continue
> +
> +                unreliable = data.getVar('UPSTREAM_CHECK_UNRELIABLE')
> +                if unreliable == "1":
> +                    I(" Skip package %s as upstream check unreliable" %
> pn)
> +                    continue
> +
> +                uv = oe.recipeutils.get_recipe_upstream_version(data)
> +
> +                pn = data.getVar('PN')
> +                cur_ver = uv['current_version']
> +
> +
> +                upstream_version_unknown =
> data.getVar('UPSTREAM_VERSION_UNKNOWN')
> +                if not uv['version']:
> +                    status = "UNKNOWN" if upstream_version_unknown else
> "UNKNOWN_BROKEN"
> +                else:
> +                    cmp = vercmp_string(uv['current_version'],
> uv['version'])
> +                    if cmp == -1:
> +                        status = "UPDATE" if not upstream_version_unknown
> else "KNOWN_BROKEN"
> +                    elif cmp == 0:
> +                        status = "MATCH" if not upstream_version_unknown
> else "KNOWN_BROKEN"
> +                    else:
> +                        status = "UNKNOWN" if upstream_version_unknown
> else "UNKNOWN_BROKEN"
> +
> +                if self.args.to_version:
> +                    next_ver = self.args.to_version
> +                else:
> +                    next_ver = uv['version'] if uv['version'] else "N/A"
> +                revision = uv['revision'] if uv['revision'] else "N/A"
> +                maintainer = data.getVar('RECIPE_MAINTAINER')
> +                no_upgrade_reason = data.getVar('RECIPE_NO_UPDATE_REASON')
> +
> +                if status == 'UPDATE' and not no_upgrade_reason:
> +                    # Always do the upgrade if recipes are specified
> +                    if self.recipes and pn in self.recipes:
> +                        pkgs_list.append((pn, cur_ver, next_ver,
> maintainer, revision))
> +
> +                    elif self._pkg_upgradable(pn, next_ver, maintainer):
> +                        pkgs_list.append((pn, cur_ver, next_ver,
> maintainer, revision))
> +                else:
> +                    if no_upgrade_reason:
> +                        I(" Skip package %s (status = %s, current version
> = %s," \
> +                            " next version = %s, no upgrade reason = %s)"
> %
> +                            (pn, status, cur_ver, next_ver,
> no_upgrade_reason))
> +                    else:
> +                        I(" Skip package %s (status = %s, current version
> = %s," \
> +                            " next version = %s)" %
> +                            (pn, status, cur_ver, next_ver))
>
>          return pkgs_list
>
> @@ -716,11 +737,6 @@ if __name__ == "__main__":
>      global settings
>      global maintainer_override
>
> -    if not os.getenv('BUILDDIR', False):
> -        E(" You must source oe-init-build-env before running this
> script!\n")
> -        E(" It is recommended to create a fresh build directory with
> it:\n")
> -        E(" $ . oe-init-build-env build-auh\n")
> -        exit(1)
>
>      devnull = open(os.devnull, 'wb')
>      if subprocess.call(["git", "config", "user.name"],
> stdout=devnull,stderr=devnull) or \
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000006d021c057cfe4403
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">LGTM,<div><br></div><div>Anibal</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Fri, Dec 14, 2018 at 10:08 AM Richard =
Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.pu=
rdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">The code in distrodata.bbclass related to the do_ch=
eckpkg task is rather<br>
dated, has holes in it (ignoring some recipes) and has horrible locking<br>
and csv related issues.<br>
<br>
We should use modern APIs such as tinfoil to make the calls we need directl=
y<br>
against bitbake, cutting out the middleman and clarifing the code.<br>
<br>
This change imports the bits of distrodata.bbclass this code needs in their=
<br>
current form. Its likely it can be further improved from here but this is a=
<br>
good start and appears to function as before, with slightly wider recipe<br=
>
coverage as some things skipped by distrodata are not skipped here (images,=
<br>
pieces of gcc, nativesdk only recipes).<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<b=
r>
---<br>
=C2=A0upgradehelper.py | 148 ++++++++++++++++++++++++++--------------------=
-<br>
=C2=A01 file changed, 82 insertions(+), 66 deletions(-)<br>
<br>
diff --git a/upgradehelper.py b/upgradehelper.py<br>
index 8fb27d3..7ad4917 100755<br>
--- a/upgradehelper.py<br>
+++ b/upgradehelper.py<br>
@@ -59,6 +59,25 @@ from statistics import Statistics<br>
=C2=A0from steps import upgrade_steps<br>
=C2=A0from testimage import TestImage<br>
<br>
+if not os.getenv(&#39;BUILDDIR&#39;, False):<br>
+=C2=A0 =C2=A0 E(&quot; You must source oe-init-build-env before running th=
is script!\n&quot;)<br>
+=C2=A0 =C2=A0 E(&quot; It is recommended to create a fresh build directory=
 with it:\n&quot;)<br>
+=C2=A0 =C2=A0 E(&quot; $=C2=A0. oe-init-build-env build-auh\n&quot;)<br>
+=C2=A0 =C2=A0 exit(1)<br>
+<br>
+import shutil<br>
+# Use the location of devtool to find scriptpath and hence bb/oe libs<br>
+scripts_path =3D os.path.abspath(os.path.dirname(shutil.which(&quot;devtoo=
l&quot;)))<br>
+sys.path =3D sys.path + [scripts_path + &#39;/lib&#39;]<br>
+import scriptpath<br>
+scriptpath.add_bitbake_lib_path()<br>
+scriptpath.add_oe_lib_path()<br>
+<br>
+import bb.tinfoil<br>
+import oe.recipeutils<br>
+from bb.utils import vercmp_string<br>
+<br>
+<br>
=C2=A0help_text =3D &quot;&quot;&quot;Usage examples:<br>
=C2=A0* To upgrade xmodmap recipe to the latest available version:<br>
=C2=A0 =C2=A0 =C2=A0$ upgrade-helper.py xmodmap<br>
@@ -599,59 +618,6 @@ class UniverseUpdater(Updater):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I(&quot; Removing tmp direc=
tory ...&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0shutil.rmtree(self.base_env=
[&#39;TMPDIR&#39;])<br>
<br>
-=C2=A0 =C2=A0 def _check_upstream_versions(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 I(&quot; Fetching upstream version(s) ...&quot=
;)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.recipes:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe =3D &quot; &quot;.join(se=
lf.recipes)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe =3D &#39;universe&#39;<br=
>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bb.checkpkg(recipe)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 except Error as e:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for line in e.stdout.split(&#39;=
\n&#39;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if line.find(&quot=
;ERROR: Task do_checkpkg does not exist&quot;) !=3D -1:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 C(&q=
uot; \&quot;distrodata.bbclass\&quot; not inherited. Consider adding &quot;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;the following to your local.conf:\n\n&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;INHERIT =3D+ \&quot;distrodata\&quot;\n&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exit=
(1)<br>
-<br>
-=C2=A0 =C2=A0 def _parse_checkpkg_file(self, file_path):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 import csv<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgs_list =3D []<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(file_path, &quot;r&quot;) as f:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 reader =3D csv.reader(f, delimit=
er=3D&#39;\t&#39;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for row in reader:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if reader.line_num=
 =3D=3D 1: # skip header line<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cont=
inue<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pn =3D row[0]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cur_ver =3D row[1]=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.args.to_ve=
rsion:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 next=
_ver =3D self.args.to_version<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 next=
_ver =3D row[2]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D row[11]=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 revision =3D row[1=
2]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 maintainer =3D row=
[14]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no_upgrade_reason =
=3D row[15]<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if status =3D=3D &=
#39;UPDATE&#39; and not no_upgrade_reason:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgs=
_list.append((pn, cur_ver, next_ver, maintainer, revision))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if n=
o_upgrade_reason:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 I(&quot; Skip package %s (status =3D %s, current version =3D %s,=
&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot; next version =3D %s, no upgrade reason =3D =
%s)&quot; %<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (pn, status, cur_ver, next_ver, no_upgrade_reason)=
)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 I(&quot; Skip package %s (status =3D %s, current version =3D %s,=
&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot; next version =3D %s)&quot; %<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (pn, status, cur_ver, next_ver))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return pkgs_list<br>
-<br>
=C2=A0 =C2=A0 =C2=A0# checks if maintainer is in whitelist and that the rec=
ipe itself is not<br>
=C2=A0 =C2=A0 =C2=A0# blacklisted: python, gcc, etc. Also, check the histor=
y if the recipe<br>
=C2=A0 =C2=A0 =C2=A0# hasn&#39;t already been tried<br>
@@ -688,16 +654,71 @@ class UniverseUpdater(Updater):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return True<br>
<br>
=C2=A0 =C2=A0 =C2=A0def _get_packages_to_upgrade(self, packages=3DNone):<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._check_upstream_versions()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 last_checkpkg_file =3D os.path.realpath(self.b=
ase_env[&#39;TMPDIR&#39;] + &quot;/log/checkpkg.csv&quot;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pkgs_list =3D []<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for pkg in self._parse_checkpkg_file(last_chec=
kpkg_file):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Always do the upgrade if recip=
es are specified<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.recipes and pkg[0] in se=
lf.recipes:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgs_list.append(p=
kg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif self._pkg_upgradable(pkg[0]=
, pkg[2], pkg[3]):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgs_list.append(p=
kg)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 with bb.tinfoil.Tinfoil() as tinfoil:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tinfoil.prepare(config_only=3DFa=
lse)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipes =3D self.recipes<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not recipes:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipes =3D tinfoi=
l.all_recipe_files(variants=3DFalse)<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for fn in recipes:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if f=
n.startswith(&quot;/&quot;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 data =3D tinfoil.parse_recipe_file(fn)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 data =3D tinfoil.parse_recipe(fn)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except bb.provider=
s.NoProvider:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I(&q=
uot; No provider for %s&quot; % fn)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cont=
inue<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unreliable =3D dat=
a.getVar(&#39;UPSTREAM_CHECK_UNRELIABLE&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if unreliable =3D=
=3D &quot;1&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I(&q=
uot; Skip package %s as upstream check unreliable&quot; % pn)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cont=
inue<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uv =3D oe.recipeut=
ils.get_recipe_upstream_version(data)<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pn =3D data.getVar=
(&#39;PN&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cur_ver =3D uv[&#3=
9;current_version&#39;]<br>
+<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 upstream_version_u=
nknown =3D data.getVar(&#39;UPSTREAM_VERSION_UNKNOWN&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not uv[&#39;ver=
sion&#39;]:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stat=
us =3D &quot;UNKNOWN&quot; if upstream_version_unknown else &quot;UNKNOWN_B=
ROKEN&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmp =
=3D vercmp_string(uv[&#39;current_version&#39;], uv[&#39;version&#39;])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if c=
mp =3D=3D -1:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 status =3D &quot;UPDATE&quot; if not upstream_version_unknown el=
se &quot;KNOWN_BROKEN&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif=
 cmp =3D=3D 0:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 status =3D &quot;MATCH&quot; if not upstream_version_unknown els=
e &quot;KNOWN_BROKEN&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 status =3D &quot;UNKNOWN&quot; if upstream_version_unknown else =
&quot;UNKNOWN_BROKEN&quot;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.args.to_ve=
rsion:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 next=
_ver =3D self.args.to_version<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 next=
_ver =3D uv[&#39;version&#39;] if uv[&#39;version&#39;] else &quot;N/A&quot=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 revision =3D uv[&#=
39;revision&#39;] if uv[&#39;revision&#39;] else &quot;N/A&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 maintainer =3D dat=
a.getVar(&#39;RECIPE_MAINTAINER&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no_upgrade_reason =
=3D data.getVar(&#39;RECIPE_NO_UPDATE_REASON&#39;)<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if status =3D=3D &=
#39;UPDATE&#39; and not no_upgrade_reason:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Al=
ways do the upgrade if recipes are specified<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if s=
elf.recipes and pn in self.recipes:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))<=
br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif=
 self._pkg_upgradable(pn, next_ver, maintainer):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if n=
o_upgrade_reason:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 I(&quot; Skip package %s (status =3D %s, current version =3D %s,=
&quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot; next version =3D %s, no upgrade reason =3D =
%s)&quot; %<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (pn, status, cur_ver, next_ver, no_upgrade_reason)=
)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 I(&quot; Skip package %s (status =3D %s, current version =3D %s,=
&quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot; next version =3D %s)&quot; %<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (pn, status, cur_ver, next_ver))<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return pkgs_list<br>
<br>
@@ -716,11 +737,6 @@ if __name__ =3D=3D &quot;__main__&quot;:<br>
=C2=A0 =C2=A0 =C2=A0global settings<br>
=C2=A0 =C2=A0 =C2=A0global maintainer_override<br>
<br>
-=C2=A0 =C2=A0 if not os.getenv(&#39;BUILDDIR&#39;, False):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 E(&quot; You must source oe-init-build-env bef=
ore running this script!\n&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 E(&quot; It is recommended to create a fresh b=
uild directory with it:\n&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 E(&quot; $=C2=A0. oe-init-build-env build-auh\=
n&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 exit(1)<br>
<br>
=C2=A0 =C2=A0 =C2=A0devnull =3D open(os.devnull, &#39;wb&#39;)<br>
=C2=A0 =C2=A0 =C2=A0if subprocess.call([&quot;git&quot;, &quot;config&quot;=
, &quot;<a href=3D"http://user.name" rel=3D"noreferrer" target=3D"_blank">u=
ser.name</a>&quot;], stdout=3Ddevnull,stderr=3Ddevnull) or \<br>
-- <br>
2.17.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000006d021c057cfe4403--
