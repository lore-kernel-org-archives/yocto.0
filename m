Return-Path: <pcjegan@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5675CE0153B
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 01:01:12 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so4141474veb.39
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 01:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2xcm4J/jDsrm+LitDfiuVP8rB2jLiScbd19JdvC924E=;
	b=mjslyl+xcctgd2hkx8aTgpCaHu1h1qfrtQ/QRbtSdqnvQFYSEfivFUYHydC/9YN8Uu
	rUH3GPmIWlS+z2N1loJ96t5oUZQCDIOmSXf6itmc+q4R7OHdJlZNEh53P3hfpPAOxuAf
	CJYlwT3P6DLjzpHeuFezZ+9eUbPCWjx4IrC6AfvF8pVs6rCHKWC6TnCMYoYSns6Ndgu7
	UWkLIwKEe4f5b/NfLr/ve/5itXacmq1DsAH3GWGtarboj2QCRr4WyWFKfNECWaj9nVzT
	b3nyrUt9DB3XGEiiR2vaSYaAo8vEjk0CbVm7QRvn+n+CtY+AcEwjvN1Ms8y5bINeM2JL
	csuA==
X-Received: by 10.58.119.233 with SMTP id kx9mr21217587veb.3.1378800071642;
	Tue, 10 Sep 2013 01:01:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.169.146 with HTTP; Tue, 10 Sep 2013 01:00:50 -0700 (PDT)
In-Reply-To: <522EC9D0.5080700@vtkloud.com>
References: <522EBE6C.5060108@vtkloud.com>
	<CAAA4K6JaJF=wO3EZQMVsDTZsJS5DwZx0wv5wmKaSHegn_iPrEw@mail.gmail.com>
	<CAAA4K6KUttDhNFn7ygOOvmcpKhfDCTb_OUjULwRrwr0zQOGPdw@mail.gmail.com>
	<522EC9D0.5080700@vtkloud.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 10 Sep 2013 13:30:50 +0530
Message-ID: <CAAA4K6Jtmh3DhK7GTCetmcihgVVnWSnOG0qaSNJ0=6tRd9wiLw@mail.gmail.com>
To: JC <jc@vtkloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: misleading dependencies between packages
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
X-List-Received-Date: Tue, 10 Sep 2013 08:01:16 -0000
Content-Type: multipart/alternative; boundary=001a11c391be7c983d04e602e8ac

--001a11c391be7c983d04e602e8ac
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 10, 2013 at 12:57 PM, JC <jc@vtkloud.com> wrote:

>  Hi JCP
>
> Thanks for your information, here are the next questions:
>
> libuuid is provided by util-linux. Check in meta/recipes-core/util-linux
> for more details.
>
>   r3 is PR that util-linux has in dylan 9.0.1. Unless you change the PR,
> it will be r3 only. I am not sure how you end up with r5.
> May be you need to (re)build util-linux if you need libuuid. Also You
> should check with the dependencies,
> I see apr package which depends on util-linux.
>
>
> Just to make sure, I did :
> bitbake util-linux -c cleanall
> bitbake util-linux
>
> It will try to fetch:
> 0: util-linux-2.22.2-r5 do_fetch (pid 2420)
>
> Which explains why I end up with a -r5 package
>

Its strange. Which version of dylan are u using? Is there any possiblity
that you set PR somewhere in any conf files, say bitbake.conf/local.conf?
I am using dylan-9.0.1 and am not getting r5. or you have 2 versions of
util-linux bb files?

This is what I get,
Waiting for 1 running tasks to finish:
0: util-linux-2.22.2-r3 do_fetch (pid 7296)



> Looking at util-linux.inc, I see it tries to download the
> SRC_URI =
> "${KERNELORG_MIRROR}/linux/utils/util-linux/v${MAJOR_VERSION}/util-linux-${PV}.tar.bz2
> \
>
>
> So ${PV} is set somewhere else to r5, but not in this package. I don't
> know why/how it is fixed to something else. Could it be an issue like PV is
> set by another package, and not reset? Otherwise I can't figure how it
> comes out as "r5".
>

Not really..no..! PV comes from bb name as in util-linux_2.22.2.bb, so it
is 2.22.2. For PR, Unless you set that variable yourself somewhere, bitbake
will not try to replace it. So please grep/check for PR in your dylan dir,
anywhere you set it.


> In the bb file I have ${PR} set to "r3". May be it should be what SRC_URI
> uses?
>

PR not used in SRC_URI only PV for fetching the correct package version.

--001a11c391be7c983d04e602e8ac
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Sep 10, 2013 at 12:57 PM, JC <span dir=3D"ltr">&lt=
;<a href=3D"mailto:jc@vtkloud.com" target=3D"_blank">jc@vtkloud.com</a>&gt;=
</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">


 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div>Hi JCP<br>
      <br>
      Thanks for your information, here are the next questions:<div class=
=3D"im"><br>
      libuuid is provided by util-linux. Check in
      meta/recipes-core/util-linux for more details.</div></div><div class=
=3D"im">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr">
            <div>r3 is PR that util-linux has in dylan 9.0.1. Unless you
              change the PR, it will be r3 only. I am not sure how you
              end up with r5.</div>
            <div>May be you need to (re)build util-linux if you need
              libuuid. Also You should check with the dependencies,=A0</div=
>
            <div>I see apr package which depends on util-linux.</div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div>
    Just to make sure, I did :<br>
    bitbake util-linux -c cleanall<br>
    bitbake util-linux<br>
    <br>
    It will try to fetch:<br>
    0: util-linux-2.22.2-r5 do_fetch (pid 2420)<br>
    <br>
    Which explains why I end up with a -r5 package<br></div></blockquote><d=
iv><br></div><div>Its strange. Which version of dylan are u using? Is there=
 any possiblity that you set PR somewhere in any conf files, say bitbake.co=
nf/local.conf?</div>

<div>I am using dylan-9.0.1 and am not getting r5. or you have 2 versions o=
f util-linux bb files?</div><div><br></div><div>This is what I get,</div><d=
iv><div>Waiting for 1 running tasks to finish:</div><div>0: util-linux-2.22=
.2-r3 do_fetch (pid 7296)</div>

</div><div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><div text=3D"#000000" =
bgcolor=3D"#FFFFFF">


    Looking at util-linux.inc, I see it tries to download the<br>
    SRC_URI =3D
    &quot;${KERNELORG_MIRROR}/linux/utils/util-linux/v${MAJOR_VERSION}/util=
-linux-${PV}.tar.bz2
    \<br>
    <br>
    <br>
    So ${PV} is set somewhere else to r5, but not in this package. I
    don&#39;t know why/how it is fixed to something else. Could it be an
    issue like PV is set by another package, and not reset? Otherwise I
    can&#39;t figure how it comes out as &quot;r5&quot;.<br></div></blockqu=
ote><div><br></div><div>Not really..no..! PV comes from bb name as in <a hr=
ef=3D"http://util-linux_2.22.2.bb">util-linux_2.22.2.bb</a>, so it is 2.22.=
2. For PR, Unless you set that variable yourself somewhere, bitbake will no=
t try to replace it. So please grep/check for PR in your dylan dir, anywher=
e you set it.</div>

<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    In the bb file I have ${PR} set to &quot;r3&quot;. May be it should be =
what
    SRC_URI uses? <br></div></blockquote><div><br></div><div>PR not used in=
 SRC_URI only PV for fetching the correct package version.</div><div><br></=
div><div><br></div></div></div></div>

--001a11c391be7c983d04e602e8ac--
