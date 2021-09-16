Subject: Re: Sharing sstate cache across build nodes
To: yocto@lists.yoctoproject.org
From: "Rusty Howell" <rustyhowell@gmail.com>
X-Originating-Location: Syracuse, Utah, US (68.177.138.69)
X-Originating-Platform: Linux Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Sep 2021 21:34:17 -0700
References: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
In-Reply-To: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
Message-ID: <12063.1631766857327604520@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DutptPOzjGCsxJvvxe1y"

--DutptPOzjGCsxJvvxe1y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the replies, Richard.

Can SSTATE_DIR be shared across build hosts with different OS's=C2=A0 (Ubun=
tu 18.04, ubuntu 20.04, etc, RHEL)?

Our build hosts are somewhat ephemeral.=C2=A0 Occasionally we need to swap =
out a build host for another one. So to bring on a new fresh build host and=
 have it cooperate correctly with the other build hosts and the PR server, =
what does it need?=C2=A0 I understand having the NFS mounted SSTATE_DIR, an=
d using the PRSERV_HOST variable set correctly. But what else?=C2=A0 Does t=
he new build host need access to a shared PERSISTENT_DIR or a shared BUILDH=
ISTORY_DIR?

What happens if the shared SSTATE cache get corrupted and has to be deleted=
?=C2=A0=C2=A0 Won't that cause all the PR server values to reset?=C2=A0 We =
just want to make sure we know how to recover from a situation like that.
Thanks a bunch.
Rusty

--DutptPOzjGCsxJvvxe1y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for the replies, Richard.&nbsp; <br /><br />Can SSTATE_DIR be s=
hared across build hosts with different OS's&nbsp; (Ubuntu 18.04, ubuntu 20=
.04, etc, RHEL)?</div>
<div>&nbsp;</div>
<div>Our build hosts are somewhat ephemeral.&nbsp; Occasionally we need to =
swap out a build host for another one. So to bring on a new fresh build hos=
t and have it cooperate correctly with the other build hosts and the PR ser=
ver, what does it need?&nbsp; I understand having the NFS mounted SSTATE_DI=
R, and using the PRSERV_HOST variable set correctly. But what else?&nbsp; D=
oes the new build host need access to a shared PERSISTENT_DIR or a shared B=
UILDHISTORY_DIR?</div>
<div>&nbsp;</div>
What happens if the shared SSTATE cache get corrupted and has to be deleted=
?&nbsp;&nbsp; Won't that cause all the PR server values to reset?&nbsp; We =
just want to make sure we know how to recover from a situation like that.<b=
r />Thanks a bunch.<br />Rusty

--DutptPOzjGCsxJvvxe1y--
