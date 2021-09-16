Subject: Re: Sharing sstate cache across build nodes
To: yocto@lists.yoctoproject.org
From: "Rusty Howell" <rustyhowell@gmail.com>
X-Originating-Location: Syracuse, Utah, US (68.177.138.69)
X-Originating-Platform: Linux Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Sep 2021 21:26:11 -0700
References: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
In-Reply-To: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
Message-ID: <10622.1631766371224484199@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a5dOyMnLI6T2mfNQtxYz"

--a5dOyMnLI6T2mfNQtxYz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Below is an accidental DM between Richard and myself. I am posting it here
for others.

> When setting up a shared sstate cache via NFS, do all the build hosts hav=
e
> read/write access to the sstate cache at the same time?=C2=A0 Doesn't tha=
t cause
> corruption in the sstate cache?=C2=A0 If they only have read-only access,=
 is there
> anything to consider when selecting which build host will generate the ss=
tate
> cache that is shared?

Writes to SSTATE_DIR are careful and should use atomic moves into place so
sharing read/write via NFS should be safe. We do test this on our autobuild=
er
quite heavily.

The main gotcha people run into with sstate is deletion since we can't hand=
le
deletion of files from sstate with builds running without the builds potent=
ially
showing non-fatal errors. We just don't delete things often on the main AB.

> Finally, Is it beneficial to use BUILDHISTORY_PUSH_REPO on all the build =
hosts
> so there is a unified build history?

It can be useful, we do this for a subset of our core builds but the repo d=
oes
get large. The buildhistory codepaths are a lot more complex and likely to =
have
concurrency issues.

> Is it problematic to share SSTATE across build hosts
> (all Ubuntu 20.04 x86_64) if they build for different MACHINE types (ie
> qemux86-64, imx8mq, beaglebone-yocto)?

No, sstate is designed to be shared like that.

Cheers,

Richard

--a5dOyMnLI6T2mfNQtxYz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span class=3D"im">Below is an accidental DM between Richard and myself. I =
am posting it here <br />for others.<br /><br />&gt; When setting up a shar=
ed sstate cache via NFS, do all the build hosts have<br />&gt; read/write a=
ccess to the sstate cache at the same time?&nbsp; Doesn't that cause<br />&=
gt; corruption in the sstate cache?&nbsp; If they only have read-only acces=
s, is there<br />&gt; anything to consider when selecting which build host =
will generate the sstate<br />&gt; cache that is shared?&nbsp; <br /><br />=
</span> Writes to SSTATE_DIR are careful and should use atomic moves into p=
lace so<br />sharing read/write via NFS should be safe. We do test this on =
our autobuilder<br />quite heavily.<br /><br />The main gotcha people run i=
nto with sstate is deletion since we can't handle<br />deletion of files fr=
om sstate with builds running without the builds potentially<br />showing n=
on-fatal errors. We just don't delete things often on the main AB.<span cla=
ss=3D"im"><br /><br />&gt; Finally, Is it beneficial to use BUILDHISTORY_PU=
SH_REPO on all the build hosts<br />&gt; so there is a unified build histor=
y?<br /><br /></span> It can be useful, we do this for a subset of our core=
 builds but the repo does<br />get large. The buildhistory codepaths are a =
lot more complex and likely to have<br />concurrency issues.<br /><br /><sp=
an class=3D"im">&gt; Is it problematic to share SSTATE across build hosts<b=
r />&gt; (all Ubuntu 20.04 x86_64) if they build for different MACHINE type=
s (ie<br />&gt; qemux86-64, imx8mq, beaglebone-yocto)?<br /><br /></span> N=
o, sstate is designed to be shared like that.<br /><br />Cheers,<br /><br /=
>Richard

--a5dOyMnLI6T2mfNQtxYz--
