Subject: SDKMACHINE and ppc64le issue with latest head?
To: yocto@lists.yoctoproject.org
From: "Andrew Geissler" <geissonator@gmail.com>
X-Originating-Location: Austin, Texas, US (45.18.127.186)
X-Originating-Platform: Mac Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 Jan 2021 06:38:56 -0800
Message-ID: <YHUN.1611931136335118962.V0j6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aHZNUZGKxMwpHrLHa5qv"

--aHZNUZGKxMwpHrLHa5qv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Over in OpenBMC, we utilize a mix of x86 and ppc64le machines for our CI.

Our latest rebase of poky master ( https://gerrit.openbmc-project.xyz/c/op=
enbmc/openbmc/+/39533/ ) has started failing to compile on our ppc64le mach=
ines with the below error.

I can workaround it by setting "SDKMACHINE=3Dx86_64" but that seems a bit =
weird on a ppc64le machine?

+ bitbake obmc-phosphor-image obmc-phosphor-debug-tarball
=1BERROR=1B: =1BOE-core's config sanity checker detected a potential misco=
nfiguration.
   Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).
   Following is the list of potential problems / advisories:

   Specified SDKMACHINE value is not valid

--aHZNUZGKxMwpHrLHa5qv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Over in OpenBMC, we utilize a mix of x86 and ppc64le machines for our CI.<b=
r /><br />Our latest rebase of poky master (<a href=3D"https://gerrit.openb=
mc-project.xyz/c/openbmc/openbmc/+/39533/" target=3D"_blank" rel=3D"noopene=
r">https://gerrit.openbmc-project.xyz/c/openbmc/openbmc/+/39533/</a>) has s=
tarted failing to compile on our ppc64le machines with the below error.<br =
/><br />I can workaround it by setting "SDKMACHINE=3Dx86_64" but that seems=
 a bit weird on a ppc64le machine?<br /><br />
<pre class=3D"console-output">+ bitbake obmc-phosphor-image obmc-phosphor-=
debug-tarball
=1BERROR=1B: =1BOE-core's config sanity checker detected a potential misco=
nfiguration.
    Either fix the cause of this error or at your own risk disable the che=
cker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Specified SDKMACHINE value is not valid</pre>

--aHZNUZGKxMwpHrLHa5qv--
