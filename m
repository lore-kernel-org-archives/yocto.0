Return-Path: <jingzhe.yu@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2CBEE00AFC
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 11:24:24 -0800 (PST)
Received: by lagw12 with SMTP id w12so4520139lag.35
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 11:24:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jingzhe.yu@gmail.com designates
	10.112.10.41 as permitted sender) client-ip=10.112.10.41; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jingzhe.yu@gmail.com
	designates 10.112.10.41 as permitted sender)
	smtp.mail=jingzhe.yu@gmail.com;
	dkim=pass header.i=jingzhe.yu@gmail.com
Received: from mr.google.com ([10.112.10.41])
	by 10.112.10.41 with SMTP id f9mr3073842lbb.8.1330197863412 (num_hops =
	1); Sat, 25 Feb 2012 11:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Mk+ysuQhRXxuxbY3xyVh5QR6GNnH1bM82ZMaSc7RK18=;
	b=DwOHHD/f8fbCpQbej06PbpRNju2F3g9ynHv3iCpdVFuJkR+8sIP/leD0FJSaZ1j3+M
	Gs6FKOiUDkX0oC5MSceTaq9xyAOiwaAy+jbNQQmIKEnKu2BqB+s3W2YZZQVWv/PLc0qZ
	Oer9ywJFWIcu652PO8AbCyyIiT+K42FNaEqG8=
MIME-Version: 1.0
Received: by 10.112.10.41 with SMTP id f9mr2560287lbb.8.1330197863259; Sat, 25
	Feb 2012 11:24:23 -0800 (PST)
Received: by 10.112.58.52 with HTTP; Sat, 25 Feb 2012 11:24:22 -0800 (PST)
In-Reply-To: <CADzUK1K+3VbBDT1j_aNYfzG=RHXOmaAbRBSHqwVpTqnkwhPVAg@mail.gmail.com>
References: <CA+mikA8JgrtBFKJ0uTaAtpEWbdru59z_FbXDV=YvTk=+ahtacQ@mail.gmail.com>
	<CADzUK1K+3VbBDT1j_aNYfzG=RHXOmaAbRBSHqwVpTqnkwhPVAg@mail.gmail.com>
Date: Sat, 25 Feb 2012 21:24:22 +0200
Message-ID: <CA+mikA9rX-A3U6HY+o7KcWh_ji9TmciidorvPvftQr83eJoYkA@mail.gmail.com>
From: JINGZHE YU <jingzhe.yu@gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: apt-native_0.7.14.bb failed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 25 Feb 2012 19:24:25 -0000
X-Groupsio-MsgNum: 4947
Content-Type: multipart/mixed; boundary=e0cb4efe28e81edd3d04b9ced32c

--e0cb4efe28e81edd3d04b9ced32c
Content-Type: multipart/alternative; boundary=e0cb4efe28e81edd2704b9ced32a

--e0cb4efe28e81edd2704b9ced32a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

After Autif gave the hint, I changed PACKAGE_CLASSES to package_rpm in
local.conf, then everything is Ok.

PACKAGE_CLASSES ?= "package_rpm"  #everything is Ok
#PACKAGE_CLASSES ?= "package_deb" #if use package_deb, then bitmake failed

Is this a bug? I attach the whole conf file.

jingzhe

On Sat, Feb 25, 2012 at 6:00 PM, Autif Khan <autif.mlist@gmail.com> wrote:

> > Hi,
> >
> > I tried to build image with: bitbake -k core-image-sato,
> > with
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2
> >
> > but it failed, here is error message:
> >
> >
> -------------------------------------------------------------------------------------------
> > NOTE: Running task 5229 of 5288 (ID: 82,
> > /home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/
> apt-native_0.7.14.bb,
> > do_install)
> > NOTE: package apt-native-0.7.14-r5: task do_install: Started
> > ERROR: Function 'do_install_base' failed (see
> >
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.28773
> > for further information)
> > ERROR: Logfile of failure stored in:
> >
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.28773
> > Log data follows:
> > | oe_libinstall: cd bin
> > | oe_libinstall: install -d
> >
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/image/home/jingzhe/yocto/edison-6.0-build/tmp/sysroots/i686-linux/usr/lib//
> > | ERROR: oe_libinstall: unable to locate shared library
> > | ERROR: Function 'do_install_base' failed (see
> >
> /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.7.14-r5/temp/log.do_install.28773
> > for further information)
> > NOTE: package apt-native-0.7.14-r5: task do_install: Failed
> > ERROR: Task 82
> > (/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/
> apt-native_0.7.14.bb,
> > do_install) failed with exit code '1'
> > ERROR:
> > '/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/
> apt-native_0.7.14.bb'
> > failed
> >
> --------------------------------------------------------------------------------------------------------------------------
> >
> > does anybody know how to solve it?
> >
>
> To help understand the context, can you please include the the MACHINE
> variable. Its in conf/local.conf
>

--e0cb4efe28e81edd2704b9ced32a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>After Autif gave the hint, I changed=A0PACKAGE_CLASS=
ES=A0to package_rpm in local.conf, then everything is Ok.</div><div><br></d=
iv><div><div>PACKAGE_CLASSES ?=3D &quot;package_rpm&quot; =A0#everything is=
 Ok</div>
<div>#PACKAGE_CLASSES ?=3D &quot;package_deb&quot; #if use package_deb, the=
n bitmake failed</div><div><br></div>Is this a bug? I attach the whole conf=
 file.</div><div><br></div><div>jingzhe=A0</div><div><br><div class=3D"gmai=
l_quote">
On Sat, Feb 25, 2012 at 6:00 PM, Autif Khan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:autif.mlist@gmail.com">autif.mlist@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">&gt; Hi,<br>
&gt;<br>
&gt; I tried to build image with:=A0bitbake -k core-image-sato,<br>
&gt; with=A0<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-1.1/poky-edison-6.0.tar.bz2" target=3D"_blank">http://downloads.yoctopro=
ject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2</a><br>
&gt;<br>
&gt; but it failed, here is error message:<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
---------------------<br>
&gt; NOTE: Running task 5229 of 5288 (ID: 82,<br>
&gt; /home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/<a href=
=3D"http://apt-native_0.7.14.bb" target=3D"_blank">apt-native_0.7.14.bb</a>=
,<br>
&gt; do_install)<br>
&gt; NOTE: package apt-native-0.7.14-r5: task do_install: Started<br>
&gt; ERROR: Function &#39;do_install_base&#39; failed (see<br>
&gt; /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.=
7.14-r5/temp/log.do_install.28773<br>
&gt; for further information)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.=
7.14-r5/temp/log.do_install.28773<br>
&gt; Log data follows:<br>
&gt; | oe_libinstall: cd bin<br>
&gt; | oe_libinstall: install -d<br>
&gt; /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.=
7.14-r5/image/home/jingzhe/yocto/edison-6.0-build/tmp/sysroots/i686-linux/u=
sr/lib//<br>
&gt; | ERROR: oe_libinstall: unable to locate shared library<br>
&gt; | ERROR: Function &#39;do_install_base&#39; failed (see<br>
&gt; /home/jingzhe/yocto/edison-6.0-build/tmp/work/i686-linux/apt-native-0.=
7.14-r5/temp/log.do_install.28773<br>
&gt; for further information)<br>
&gt; NOTE: package apt-native-0.7.14-r5: task do_install: Failed<br>
&gt; ERROR: Task 82<br>
&gt; (/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/<a href=
=3D"http://apt-native_0.7.14.bb" target=3D"_blank">apt-native_0.7.14.bb</a>=
,<br>
&gt; do_install) failed with exit code &#39;1&#39;<br>
&gt; ERROR:<br>
&gt; &#39;/home/jingzhe/yocto/poky-edison-6.0/meta/recipes-devtools/apt/<a =
href=3D"http://apt-native_0.7.14.bb" target=3D"_blank">apt-native_0.7.14.bb=
</a>&#39;<br>
&gt; failed<br>
&gt; ----------------------------------------------------------------------=
----------------------------------------------------<br>
&gt;<br>
&gt; does anybody know how to solve it?<br>
&gt;<br>
<br>
</div></div>To help understand the context, can you please include the the =
MACHINE<br>
variable. Its in conf/local.conf<br>
</blockquote></div><br></div>

--e0cb4efe28e81edd2704b9ced32a--

--e0cb4efe28e81edd3d04b9ced32c
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gz31fx5v0

IwojIFRoaXMgZmlsZSBpcyB5b3VyIGxvY2FsIGNvbmZpZ3VyYXRpb24gZmlsZSBhbmQgaXMgd2hl
cmUgYWxsIGxvY2FsIHVzZXIgc2V0dGluZ3MKIyBhcmUgcGxhY2VkLiBUaGUgY29tbWVudHMgaW4g
dGhpcyBmaWxlIGdpdmUgc29tZSBndWlkZSB0byB0aGUgb3B0aW9ucyBhIG5ldyB1c2VyCiMgdG8g
dGhlIHN5c3RlbSBtaWdodCB3YW50IHRvIGNoYW5nZSBidXQgcHJldHR5IG11Y2ggYW55IGNvbmZp
Z3VyYXRpb24gb3B0aW9uIGNhbgojIGJlIHNldCBpbiB0aGlzIGZpbGUuIE1vcmUgYWR2ZW50dXJv
dXMgdXNlcnMgY2FuIGxvb2sgYXQgbG9jYWwuY29uZi5leHRlbmRlZCAKIyB3aGljaCBjb250YWlu
cyBvdGhlciBleGFtcGxlcyBvZiBjb25maWd1cmF0aW9uIHdoaWNoIGNhbiBiZSBwbGFjZWQgaW4g
dGhpcyBmaWxlCiMgYnV0IG5ldyB1c2VycyBsaWtlbHkgZG9uJ3QgbmVlZCBhbnkgb2YgdGhlbSBp
bml0aWFsbHkuCiMKIyBMaW5lcyBzdGFydGluZyB3aXRoIHRoZSAnIycgY2hhcmFjdGVyIGFyZSBj
b21tZW50ZWQgb3V0IGFuZCBpbiBzb21lIGNhc2VzIHRoZSAKIyBkZWZhdWx0IHZhbHVlcyBhcmUg
cHJvdmlkZWQgYXMgY29tbWVudHMgdG8gc2hvdyBwZW9wbGUgZXhhbXBsZSBzeW50YXguIEVuYWJs
aW5nCiMgdGhlIG9wdGlvbiBpcyBhIHF1ZXN0aW9uIG9mIHJlbW92aW5nIHRoZSAjIGNoYXJhY3Rl
ciBhbmQgbWFraW5nIGFueSBjaGFuZ2UgdG8gdGhlCiMgdmFyaWFibGUgYXMgcmVxdWlyZWQuCgoj
CiMgUGFyYWxsZWxpc20gT3B0aW9ucwojCiMgVGhlc2UgdHdvIG9wdGlvbnMgY29udHJvbCBob3cg
bXVjaCBwYXJhbGxlbGlzbSBCaXRCYWtlIHNob3VsZCB1c2UuIFRoZSBmaXJzdCAKIyBvcHRpb24g
ZGV0ZXJtaW5lcyBob3cgbWFueSB0YXNrcyBiaXRiYWtlIHNob3VsZCBydW4gaW4gcGFyYWxsZWw6
CiMKQkJfTlVNQkVSX1RIUkVBRFMgPSAiNCIKIyAKIyBUaGUgc2Vjb25kIG9wdGlvbiBjb250cm9s
cyBob3cgbWFueSBwcm9jZXNzZXMgbWFrZSBzaG91bGQgcnVuIGluIHBhcmFsbGVsIHdoZW4KIyBy
dW5uaW5nIGNvbXBpbGUgdGFza3M6CiMKUEFSQUxMRUxfTUFLRSA9ICItaiA0IgojCiMgRm9yIGEg
cXVhZGNvcmUsIEJCX05VTUJFUl9USFJFQURTID0gIjQiLCBQQVJBTExFTF9NQUtFID0gIi1qIDQi
IHdvdWxkCiMgYmUgYXBwcm9wcmlhdGUgZm9yIGV4YW1wbGUuCgojCiMgTWFjaGluZSBTZWxlY3Rp
b24KIwojIFlvdSBuZWVkIHRvIHNlbGVjdCBhIHNwZWNpZmljIG1hY2hpbmUgdG8gdGFyZ2V0IHRo
ZSBidWlsZCB3aXRoLiBUaGVyZSBhcmUgYSBzZWxlY3Rpb24KIyBlbXVsYXRlZCBtYWNoaW5lcyBh
dmFpbGFibGUgd2hpY2ggY2FuIGJvb3QgYW5kIHJ1biBpbiB0aGUgUUVNVSBlbXVsYXRvcjoKIwoj
TUFDSElORSA/PSAicWVtdWFybSIKI01BQ0hJTkUgPz0gInFlbXVtaXBzIgojTUFDSElORSA/PSAi
cWVtdXBwYyIKI01BQ0hJTkUgPz0gInFlbXV4ODYiCiNNQUNISU5FID89ICJxZW11eDg2LTY0Igoj
CiMgVGhlcmUgYXJlIGFsc28gdGhlIGZvbGxvd2luZyBoYXJkd2FyZSBib2FyZCB0YXJnZXQgbWFj
aGluZXMgaW5jbHVkZWQgZm9yIAojIGRlbW9uc3RyYXRpb24gcHVycG9zZXM6CiMKI01BQ0hJTkUg
Pz0gImF0b20tcGMiCiNNQUNISU5FID89ICJiZWFnbGVib2FyZCIKI01BQ0hJTkUgPz0gIm1wYzgz
MTVlLXJkYiIKI01BQ0hJTkUgPz0gInJvdXRlcnN0YXRpb25wcm8iCiMKIyBUaGlzIHNldHMgdGhl
IGRlZmF1bHQgbWFjaGluZSB0byBiZSBxZW11eDg2IGlmIG5vIG90aGVyIG1hY2hpbmUgaXMgc2Vs
ZWN0ZWQ6Ck1BQ0hJTkUgPz89ICJxZW11eDg2IgoKIwojIFdoZXJlIHRvIHBsYWNlIGRvd25sb2Fk
cwojCiMgRHVyaW5nIGEgZmlyc3QgYnVpbGQgdGhlIHN5c3RlbSB3aWxsIGRvd25sb2FkIG1hbnkg
ZGlmZmVyZXJudCBzb3VyY2UgY29kZSB0YXJiYWxscwojIGZyb20gdmFyaW91cyB1cHN0cmVhbSBw
cm9qZWN0cy4gVGhpcyBjYW4gdGFrZSBhIHdoaWxlLCBwYXJ0aWN1bGFybHkgaWYgeW91ciBuZXR3
b3JrCiMgY29ubmVjdGlvbiBpcyBzbG93LiBUaGVzZSBhcmUgYWxsIHN0b3JlZCBpbiBETF9ESVIu
IFdoZW4gd2lwaW5nIGFuZCByZWJ1aWxkaW5nIHlvdQojIGNhbiBwcmVzZXJ2ZSB0aGlzIGRpcmVj
dG9yeSB0byBzcGVlZCB1cCB0aGlzIHBhcnQgb2Ygc3Vic2VxdWVudCBidWlsZHMuIFRoaXMgZGly
ZWN0b3J5CiMgaXMgc2FmZSB0byBzaGFyZSBiZXR3ZWVuIG11bHRpcGxlIGJ1aWxkcyBvbiB0aGUg
c2FtZSBtYWNoaW5lIHRvby4KIwojIFRoZSBkZWZhdWx0IGlzIGEgZG93bmxvYWRzIGRpcmVjdG9y
eSB1bmRlciBUT1BESVIgd2hpY2ggaXMgdGhlIGJ1aWxkIGRpcmVjdG9yeS4KIwojRExfRElSID89
ICIke1RPUERJUn0vZG93bmxvYWRzIgoKIwojIFdoZXJlIHRvIHBsYWNlIHNoYXJlZC1zdGF0ZSBm
aWxlcwojCiMgQml0QmFrZSBoYXMgdGhlIGNhcGFiaWxpdHkgdG8gYWNjZWxlcmF0ZSBidWlsZHMg
YmFzZWQgb24gcHJldmlvdXNseSBidWlsdCBvdXRwdXQuCiMgVGhpcyBpcyBkb25lIHVzaW5nICJz
aGFyZWQgc3RhdGUiIGZpbGVzIHdoaWNoIGNhbiBiZSB0aHJvdWdoIG9mIGFzIGNhY2hlIG9iamVj
dHMKIyBhbmQgdGhpcyBvcHRpb24gZGV0ZXJtaW5lcyB3aGVyZSB0aG9zZSBmaWxlcyBhcmUgcGxh
Y2VkLgojCiMgWW91IGNhbiB3aXBlIG91dCBUTVBESVIgbGVhdmluZyB0aGlzIGRpcmVjdG9yeSBp
bnRhY3QgYW5kIHRoZSBidWlsZCB3b3VsZCByZWdlbmVyYXRlCiMgZnJvbSB0aGVzZSBmaWxlcyBp
ZiBubyBjaGFnZXMgd2VyZSBtYWRlIHRvIHRoZSBjb25maWd1cmF0aW9uLiBJZiBjaGFuZ2VzIHdl
cmUgbWFkZQojIHRvIHRoZSBjb25maWd1cmF0aW9uLCBvbmx5IHNoYXJlZCBzdGF0ZSBmaWxlcyB3
aGVyZSB0aGUgc3RhdGUgd2FzIHN0aWxsIHZhbGlkIHdvdWxkCiMgYmUgdXNlZCAoZG9uZSB1c2lu
ZyBjaGVja3N1bXMpLgojCiMgVGhlIGRlZmF1bHQgaXMgYSBzc3RhdGUtY2FjaGUgZGlyZWN0b3J5
IHVuZGVyIFRPUERJUi4KIwojU1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1jYWNoZSIK
CiMKIyBXaGVyZSB0byBwbGFjZSB0aGUgYnVpbGQgb3V0cHV0CiMKIyBUaGlzIG9wdGlvbiBzcGVj
aWZpZXMgd2hlcmUgdGhlIGJ1bGsgb2YgdGhlIGJ1aWxkaW5nIHdvcmsgc2hvdWxkIGJlIGRvbmUg
YW5kCiMgd2hlcmUgQml0QmFrZSBzaG91bGQgcGxhY2UgaXRzIHRlbXBvcmFyeSBmaWxlcyBhbmQg
b3V0cHV0LiBLZWVwIGluIG1pbmQgdGhhdAojIHRoaXMgaW5jbHVkZXMgdGhlIGV4dHJhY3Rpb24g
YW5kIGNvbXBsYXRpb24gb2YgbWFueSBhcHBsaWNhdGlvbnMgYW5kIHRoZSB0b29sY2hhaW4KIyB3
aGljaCBjYW4gdXNlIEdpZ2FieXRlcyBvZiBoYXJkIGRpc2sgc3BhY2UuCiMKIyBUaGUgZGVmYXVs
dCBpcyBhIHRtcCBkaXJlY3RvcnkgdW5kZXIgVE9QRElSLgojCiNUTVBESVIgPSAiJHtUT1BESVJ9
L3RtcCIKCiMKIyBEZWZhdWx0IHBvbGljeSBjb25maWcKIwojIFRoZSBkaXN0cmlidXRpb24gc2V0
dGluZyBjb250cm9scyB3aGljaCBwb2xpY3kgc2V0dGluZ3MgYXJlIHVzZWQgYXMgZGVmYXVsdHMu
CiMgVGhlIGRlZmF1bHQgdmFsdWUgaXMgZmluZSBmb3IgZ2VuZXJhbCBZb2N0byBwcm9qZWN0IHVz
ZSwgYXQgbGVhc3QgaW5pdGlhbGx5LgojIFVsdGltYXRlbHkgd2hlbiBjcmVhdGluZyBjdXN0b20g
cG9saWN5LCBwZW9wbGUgd2lsbCBsaWtlbHkgZW5kIHVwIHN1YmNsYXNzaW5nIAojIHRoZXNlIGRl
ZmF1bHRzLgojCkRJU1RSTyA/PSAicG9reSIKIyBBcyBhbiBleGFibGUgb2YgYSBzdWJjbGFzcyB0
aGVyZSBpcyBhICJibGVlZGluZyIgZWdkZSBwb2xpY3kgY29uZmlndXJhdGlvbiAKIyB3aGVyZSBt
YW55IHZlcnNpb25zIGFyZSBzZXQgdG8gdGhlIGFic29sdXRlIGxhdGVzdCBjb2RlIGZyb20gdGhl
IHVwc3RyZWFtIAojIHNvdXJjZSBjb250cm9sIHN5c3RlbXMuIFRoaXMgaXMganVzdCBtZW50aW9u
ZWQgaGVyZSBhbiBhbiBleGFtcGxlLCBpdHMgbm90CiMgdXNlZnVsIHRvIG1vc3QgbmV3IHVzZXJz
LgojIERJU1RSTyA/PSAicG9reS1ibGVlZGluZyIKCiMKIyBQYWNrYWdlIE1hbmFnZW1lbnQgY29u
ZmlndXJhdGlvbgojCiMgVGhpcyB2YXJpYWJsZSBsaXN0cyB3aGljaCBwYWNrYWdpbmcgZm9ybWF0
cyB0byBlbmFibGUuIE11bHRpcGxlIHBhY2thZ2UgYmFja2VuZHMgCiMgY2FuIGJlIGVuYWJsZWQg
YXQgb25jZSBhbmQgdGhlIGZpcnN0IGl0ZW0gbGlzdGVkIGluIHRoZSB2YXJpYWJsZSB3aWxsIGJl
IHVzZWQgCiMgdG8gZ2VuZXJhdGUgdGhlIHJvb3QgZmlsZXN5c3RlbXMuCiMgT3B0aW9ucyBhcmU6
CiMgIC0gJ3BhY2thZ2VfZGViJyBmb3IgZGViaWFuIHN0eWxlIGRlYiBmaWxlcwojICAtICdwYWNr
YWdlX2lwaycgZm9yIGlwayBmaWxlcyBhcmUgdXNlZCBieSBvcGtnIChhIGRlYmlhbiBzdHlsZSBl
bWJlZGRlZCBwYWNrYWdlIG1hbmFnZXIpCiMgIC0gJ3BhY2thZ2VfcnBtJyBmb3IgcnBtIHN0eWxl
IHBhY2thZ2VzCiMgRS5nLjogUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSBwYWNrYWdl
X2RlYiBwYWNrYWdlX2lwayIKIyBXZSBkZWZhdWx0IHRvIHJwbToKUEFDS0FHRV9DTEFTU0VTID89
ICJwYWNrYWdlX3JwbSIgICNldmVyeXRoaW5nIGlzIE9rCiNQQUNLQUdFX0NMQVNTRVMgPz0gInBh
Y2thZ2VfZGViIiAjaWYgdXNlIHBhY2thZ2VfZGViLCB0aGVuIGJpdG1ha2UgZmFpbGVkCgojCiMg
U0RLL0FEVCB0YXJnZXQgYXJjaGl0ZWN0dXJlCiMKIyBUaGlzIHZhcmlhYmxlIHNwZWNpZmllZCB0
aGUgYXJjaGl0ZWN0dXJlIHRvIGJ1aWxkIFNESy9BRFQgaXRlbXMgZm9yIGFuZCBtZWFucwojIHlv
dSBjYW4gYnVpbGQgdGhlIFNESyBwYWNrYWdlcyBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFu
IHRoZSBtYWNoaW5lIHlvdSBhcmUgCiMgcnVubmluZyB0aGUgYnVpbGQgb24gKGkuZS4gYnVpbGRp
bmcgaTY4NiBwYWNrYWdlcyBvbiBhbiB4ODZfNjQgaG9zdC5fCiMgU3VwcG9ydGVkIHZhbHVlcyBh
cmUgaTY4NiBhbmQgeDg2XzY0CiNTREtNQUNISU5FID89ICJpNjg2IgoKIwojIEV4dHJhIGltYWdl
IGNvbmZpZ3VyYXRpb24gZGVmYXVsdHMKIwojIFRoZSBFWFRSQV9JTUFHRV9GRUFUVVJFUyB2YXJp
YWJsZSBhbGxvd3MgZXh0cmEgcGFja2FnZXMgdG8gYmUgYWRkZWQgdG8gdGhlIGdlbmVyYXRlZCAK
IyBpbWFnZXMuIFNvbWUgb2YgdGhlc2Ugb3B0aW9ucyBhcmUgYWRkZWQgdG8gY2VydGFpbiBpbWFn
ZSB0eXBlcyBhdXRvbWF0aWNhbGx5LiBUaGUKIyB2YXJpYWJsZSBjYW4gY29udGFpbiB0aGUgZm9s
bG93aW5nIG9wdGlvbnM6CiMgICJkYmctcGtncyIgICAgICAgLSBhZGQgLWRiZyBwYWNrYWdlcyBm
b3IgYWxsIGluc3RhbGxlZCBwYWNrYWdlcwojICAgICAgICAgICAgICAgICAgICAgKGFkZHMgc3lt
Ym9sIGluZm9ybWF0aW9uIGZvciBkZWJ1Z2dpbmcvcHJvZmlsaW5nKQojICAiZGV2LXBrZ3MiICAg
ICAgIC0gYWRkIC1kZXYgcGFja2FnZXMgZm9yIGFsbCBpbnN0YWxsZWQgcGFja2FnZXMKIyAgICAg
ICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gZGV2ZWxvcCBhZ2FpbnN0IGxp
YnMgaW4gdGhlIGltYWdlKQojICAidG9vbHMtc2RrIiAgICAgIC0gYWRkIGRldmVsb3BtZW50IHRv
b2xzIChnY2MsIG1ha2UsIHBrZ2NvbmZpZyBldGMuKQojICAidG9vbHMtZGVidWciICAgIC0gYWRk
IGRlYnVnZ2luZyB0b29scyAoZ2RiLCBzdHJhY2UpCiMgICJ0b29scy1wcm9maWxlIiAgLSBhZGQg
cHJvZmlsaW5nIHRvb2xzIChvcHJvZmlsZSwgZXhtYXAsIGx0dG5nIHZhbGdyaW5kICh4ODYgb25s
eSkpCiMgICJ0b29scy10ZXN0YXBwcyIgLSBhZGQgdXNlZnVsIHRlc3RpbmcgdG9vbHMgKHRzX3By
aW50LCBhcGxheSwgYXJlY29yZCBldGMuKQojICAiZGVidWctdHdlYWtzIiAgIC0gbWFrZSBhbiBp
bWFnZSBmb3Igc3VpdGFibGUgb2YgZGV2ZWxvcG1lbnQKIyAgICAgICAgICAgICAgICAgICAgIGUu
Zy4gc3NoIHJvb3QgYWNjZXNzIGhhcyBhIGJsYW5rIHBhc3N3b3JkCiMgVGhlcmUgYXJlIG90aGVy
IGFwcGxpY2F0aW9uIHRhcmdldHMgdGhhdCBjYW4gYmUgdXNlcyBoZXJlIHRvbywgc2VlIAojIG1l
dGEvY2xhc3Nlcy9jb3JlLWltYWdlLmJiY2xhc3MgYW5kIG1ldGEvcmVjaXBlcy1jb3JlL3Rhc2tz
L3Rhc2stY29yZS5iYiBmb3IgbW9yZSBkZXRhaWxzLgojIFdlIGRlZmF1bHQgdG8gZW5hYmxpbmcg
dGhlIGRlYnVnZ2luZyB0d2Vha3MuCkVYVFJBX0lNQUdFX0ZFQVRVUkVTID0gImRlYnVnLXR3ZWFr
cyIKCiMKIyBBZGRpdGlvbmFsIGltYWdlIGZlYXR1cmVzCiMKIyBUaGUgZm9sbG93aW5nIGlzIGEg
bGlzdCBvZiBhZGRpdGlvbmFsIGNsYXNzZXMgdG8gdXNlIHdoZW4gYnVpbGRpbmcgaW1hZ2VzIHdo
aWNoCiMgZW5hYmxlIGV4dHJhIGZlYXR1cmVzLiBTb21lIGF2YWlsYWJsZSBvcHRpb25zIHdoaWNo
IGNhbiBiZSBpbmNsdWRlZCBpbiB0aGlzIHZhcmlhYmxlIAojIGFyZToKIyAgIC0gJ2ltYWdlLW1r
bGlicycgdG8gcmVkdWNlIHNoYXJlZCBsaWJyYXJ5IGZpbGVzIHNpemUgZm9yIGFuIGltYWdlCiMg
ICAtICdpbWFnZS1wcmVsaW5rJyBpbiBvcmRlciB0byBwcmVsaW5rIHRoZSBmaWxlc3lzdGVtIGlt
YWdlCiMgICAtICdpbWFnZS1zd2FiJyB0byBwZXJmb3JtIGhvc3Qgc3lzdGVtIGludHJ1c2lvbiBk
ZXRlY3Rpb24KIyBOT1RFOiBpZiBsaXN0aW5nIG1rbGlicyAmIHByZWxpbmsgYm90aCwgdGhlbiBt
YWtlIHN1cmUgbWtsaWJzIGlzIGJlZm9yZSBwcmVsaW5rCiMgTk9URTogbWtsaWJzIGFsc28gbmVl
ZHMgdG8gYmUgZXhwbGljaXRseSBlbmFibGVkIGZvciBhIGdpdmVuIGltYWdlLCBzZWUgbG9jYWwu
Y29uZi5leHRlbmRlZApVU0VSX0NMQVNTRVMgPz0gImltYWdlLW1rbGlicyBpbWFnZS1wcmVsaW5r
IgoKIwojIFJ1bnRpbWUgdGVzdGluZyBvZiBpbWFnZXMKIwojIFRoZSBidWlsZCBzeXN0ZW0gY2Fu
IHRlc3QgYm9vdGluZyB2aXJ0dWFsIG1hY2hpbmUgaW1hZ2VzIHVuZGVyIHFlbXUgKGFuIGVtdWxh
dG9yKQojIGFmdGVyIGFueSByb290IGZpbGVzeXN0ZW1zIGFyZSBjcmVhdGVkIGFuZCBydW4gdGVz
dHMgYWdhaW5zdCB0aG9zZSBpbWFnZXMuIFRvCiMgZW5hYmxlIHRoaXMgdW5jb21tZW50IHRoaXMg
bGluZQojSU1BR0VURVNUID0gInFlbXUiCiMKIyBUaGlzIHZhcmlhYmxlIGNvbnRyb2xzIHdoaWNo
IHRlc3RzIGFyZSBydW4gYWdhaW5zdCB2aXJ0dWFsIGltYWdlcyBpZiBlbmFibGVkCiMgYWJvdmUu
IFRoZSBmb2xsb3dpbmcgd291bGQgZW5hYmxlIGJhdCwgb290IHRlc3QgY2FzZSB1bmRlciBzYW5p
dHkgc3VpdGUgYW5kIAojIHRvb2xjaGFpbiB0ZXN0cwojVEVTVF9TQ0VOID0gInNhbml0eSBiYXQg
c2FuaXR5OmJvb3QgdG9vbGNoYWluIgojCiMgQmVjYXVzZSBvZiB0aGUgUUVNVSBib290aW5nIHNs
b3duZXNzIGlzc3VlKHNlZSBidWcgIzY0NiBhbmQgIzYxOCksIGF1dG9idWlsZGVyCiMgbWF5IHN1
ZmZlciBhIHRpbWVvdXQgaXNzdWUgd2hlbiBydW5uaW5nIHNhbml0eSB0ZXN0LiBXZSBpbnRyb2R1
Y2UgdmFyaWFibGUKIyBURVNUX1NFUklBTElaRSBoZXJlIHRvIHJlZHVjZSB0aGUgdGltZSBvbiBz
YW5pdHkgdGVzdC4gSXQgaXMgYnkgZGVmYXVsdCBzZXQgCiMgdG8gMS4gVGhpcyB3aWxsIHN0YXJ0
IGltYWdlIGFuZCBydW4gY2FzZXMgaW4gdGhlIHNhbWUgaW1hZ2Ugd2l0aG91dCByZWJvb3QgCiMg
b3Iga2lsbC4gSWYgaXQgaXMgc2V0IHRvIDAsIHRoZSBpbWFnZSB3aWxsIGJlIGNvcGllZCBhbmQg
dGVzdGVkIGZvciBlYWNoIAojIGNhc2UsIHdoaWNoIHdpbGwgdGFrZSBsb25nZXIgYnV0IGJlIG1v
cmUgcHJlY2lzZS4KI1RFU1RfU0VSSUFMSVpFID0gIjEiCgojCiMgSW50ZXJhY3RpdmUgc2hlbGwg
Y29uZmlndXJhdGlvbgojCiMgVW5kZXIgY2VydGFpbiBjaXJjdW1zdGFuY2VzIHRoZSBzeXN0ZW0g
bWF5IG5lZWQgaW5wdXQgZnJvbSB5b3UgYW5kIHRvIGRvIHRoaXMgaXQgCiMgY2FuIGxhdW5jaCBh
biBpbnRlcmFjdGl2ZSBzaGVsbC4gSXQgbmVlZHMgdG8gZG8gdGhpcyBzaW5jZSB0aGUgYnVpbGQg
aXMgCiMgbXVsdGl0aHJlYWRlZCBhbmQgbmVlZHMgdG8gYmUgYWJsZSB0byBoYW5kbGUgdGhlIGNh
c2Ugd2hlcmUgbW9yZSB0aGFuIG9uZSBwYXJhbGxlbAojIHByb2Nlc3MgbWF5IHJlcXVpcmUgdGhl
IHVzZXIncyBhdHRlbnRpb24uIFRoZSBkZWZhdWx0IGlzIHRvIHVzZSB4dGVybS4KIwojIEV4YW1w
bGVzIG9mIHRoZSBvY2Nhc2lvbnMgdGhpcyBtYXkgaGFwcGVuIGFyZSB3aGVuIHJlc29sdmluZyBw
YXRjaGVzIHdoaWNoIGNhbm5vdAojIGJlIGFwcGxpZWQsIHRvIHVzZSB0aGUgZGV2c2hlbGwgb3Ig
dGhlIGtlcm5lbCBtZW51Y29uZmlnCiMKIyBJZiB5b3UgZG8gbm90IHVzZSAob3IgaGF2ZSBpbnN0
YWxsZWQpIHh0ZXJtIHlvdSB3aWxsIG5lZWQgdG8KIyB1bmNvbW1lbnQgdGhlc2UgdmFyaWFibGVz
IGFuZCBzZXQgdGhlbSB0byB0aGUgdGVybWluYWwgeW91IHdpc2ggdG8gdXNlCiMgCiMgU3VwcG9y
dGVkIHNoZWxsIHByZWZpeGVzIGZvciAqX1RFUk1DTUQgYW5kICpfVEVSTUNNRFJVTiBhcmU6CiMg
R05PTUUsIFNDUkVFTiwgWFRFUk0gYW5kIEtPTlNPTEUKIyBOb3RlOiBjdXJyZW50bHksIEtvbnNv
bGUgc3VwcG9ydCBvbmx5IHdvcmtzIGZvciBLREUgMy54IGR1ZSB0byB0aGUgd2F5CiMgbmV3ZXIg
S29uc29sZSB2ZXJzaW9ucyBiZWhhdmUKI1RFUk1DTUQgPSAiJHtYVEVSTV9URVJNQ01EfSIKI1RF
Uk1DTURSVU4gPSAiJHtYVEVSTV9URVJNQ01EUlVOfSIKIyBCeSBkZWZhdWx0IGRpc2FibGUgaW50
ZXJhY3RpdmUgcGF0Y2ggcmVzb2x1dGlvbiAodGFza3Mgd2lsbCBqdXN0IGZhaWwgaW5zdGVhZCk6
ClBBVENIUkVTT0xWRSA9ICJub29wIgoKIwojIFNoYXJlZC1zdGF0ZSBmaWxlcyBmcm9tIG90aGVy
IGxvY2F0aW9ucwojCiMgQXMgbWVudGlvbmVkIGFib3ZlLCBzaGFyZWQgc3RhdGUgZmlsZXMgYXJl
IHByZWJ1aWx0IGNhY2hlIGRhdGEgb2JqZWN0cyB3aGljaCBjYW4gCiMgdXNlZCB0byBhY2NlbGVy
YXRlIGJ1aWxkIHRpbWUuIFRoaXMgdmFyaWFibGUgY2FuIGJlIHVzZWQgdG8gY29uZmlndXJlIHRo
ZSBzeXN0ZW0KIyB0byBzZWFyY2ggb3RoZXIgbWlycm9yIGxvY2F0aW9ucyBmb3IgdGhlc2Ugb2Jq
ZWN0cyBiZWZvcmUgaXQgYnVpbGRzIHRoZSBkYXRhIGl0c2VsZi4KIwojIFRoaXMgY2FuIGJlIGEg
ZmlsZXN5c3RlbSBkaXJlY3RvcnksIG9yIGEgcmVtb3RlIHVybCBzdWNoIGFzIGh0dHAgb3IgZnRw
LiBUaGVzZQojIHdvdWxkIGNvbnRhaW4gdGhlIHNzdGF0ZS1jYWNoZSByZXN1bHRzIGZyb20gcHJl
dmlvdXMgYnVpbGRzIChwb3NzaWJseSBmcm9tIG90aGVyIAojIG1hY2hpbmVzKS4gVGhpcyB2YXJp
YWJsZSB3b3JrcyBsaWtlIGZldGNoZXIgTUlSUk9SUy9QUkVNSVJST1JTIGFuZCBwb2ludHMgdG8g
dGhlIAojIGNhY2hlIGxvY2F0aW9ucyB0byBjaGVjayBmb3IgdGhlIHNoYXJlZCBvYmplY3RzLgoj
U1NUQVRFX01JUlJPUlMgPz0gIlwKI2ZpbGU6Ly8uKiBodHRwOi8vc29tZXNlcnZlci50bGQvc2hh
cmUvc3N0YXRlLyBcbiBcCiNmaWxlOi8vLiogZmlsZTovLy9zb21lL2xvY2FsL2Rpci9zc3RhdGUv
IgoKIyBDT05GX1ZFUlNJT04gaXMgaW5jcmVhc2VkIGVhY2ggdGltZSBidWlsZC9jb25mLyBjaGFu
Z2VzIGluY29tcGF0aWJseSBhbmQgaXMgdXNlZCB0bwojIHRyYWNrIHRoZSB2ZXJzaW9uIG9mIHRo
aXMgZmlsZSB3aGVuIGl0IHdhcyBnZW5lcmF0ZWQuIFRoaXMgY2FuIHNhZmVseSBiZSBpZ25vcmVk
IGlmCiMgdGhpcyBkb2Vzbid0IG1lYW4gYW55dGhpbmcgdG8geW91LgpDT05GX1ZFUlNJT04gPSAi
MSIKCiMgSU5IRVJJVCArPSBybV93b3JrCgo=

--e0cb4efe28e81edd3d04b9ced32c--
