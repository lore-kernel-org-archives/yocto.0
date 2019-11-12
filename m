Return-Path: <gholhakiii@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2728E00D60; Tue, 12 Nov 2019 08:17:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gholhakiii[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.6.130.121 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic316-11.consmr.mail.bf2.yahoo.com
	(sonic316-11.consmr.mail.bf2.yahoo.com [74.6.130.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14EEFE00D46
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 08:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1573575474; bh=GX3Dk9yZ365/+RU3diBDiV4JhEACwTRlfaB+j/q3qDU=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=VVUZZXwvpIbzHfxbtjLwsMF4B7buaEuSUsSQWWz373vsPw8E0V3ViOIhXrfzCZpcScxj/Cf3smy+OQUYhIhpm1z6mUt5XP0dwaB74ox4dabN5gcHwGIgeqiqOu2BH9mD2JGsZNzucBQDYFO/dFxOEVnU8lgKoFcXu656kqKeVr4EVHl7n1of8tqPHb9NN4J4LNK74+eRis1R3y+h4qFqWkptr4NS/HM1Zsr+jMRy+Rt+RvpwFHhSnQsPgC6HflO7ijRb+VLZFqyBD5/8vO6PYwfjw8BN97pZm+ltUkdAtcM7keVVB9IAE3t3wX6LJpVyCLfMJJE9bjzyEZ6vKwbD0g==
X-YMail-OSG: wNvwFMcVM1nJ1umvyiBZOt5eCghZB8HViIiqzhAStGWVQIZKK_iIsM9qoIvx8tP
	oENVISJYCsFzN2g28803ua6vlpGssgUU8fOWQhCsfPzHyZDMeOgbwnMlDRUfoF0oBkmOlbDfsf_a
	ppAtWOJsFPYOL8eQTFESRxVvWwX6XOoK_U..mMbQYLLH1FNBCJA5KBCUR.uMDQA241GxmZpyrOlK
	7L9DxH6VXARfnFKAhtUy2aQKBnuLhFry0rcKDliDpXaM4E0sKCiXNiX7ArsmIhQfz.VZEAEqovMS
	hZ8DB3FOWltVUnTGG5MCLPAeHE3K3Wcueq.wawHbKuwl9dBIWr1pp3hppmUYWYPY_9mPoqxu2EPU
	JTEm.2ejtTs78Gned7wy2Qh0fikyaMuAbUqd4QtSmJfms_YIUYJWZlD20MhTaUG4hFr.FYk4UGAB
	UhzIJqu82QcRYHVTHHlL0MjTqkFA91KdTkskIxQGT8VtVOvsOxX9pzRLmVWZDMs2FkN71RT7km2V
	vRy2fmm89THBE_lfuLY6QK9NT1CF06v9t6lFAOOXsoFWXqfo.HyGt570gbDD3nCMQzCNq0oGQMm3
	z3bsDrs5PRePM9C_sJAUJtYXbUSEfZ1SQ3sDv.Hu8mkl0DhYLcpWujrhwzmc8GViQi7Kv7XFMYvJ
	zE9n7Wbczi_7bZHP7Wa.M4Ynew1nk6SgA3C_t3fVJ_w5913B20VkikfvkDtlwF9VSsV3_GWGHxS8
	qJd.bOOxHEqVHxjAKnyidWaLnsbCBStpmOYq.Y6CkBrTtEYumEFk3GLzA_XE3xUA2NCxWobKryAs
	mJIxSSPAejA9YVGBJiH.pQjtZJ5_wu88kRMikdIUrcvkqBSQuuaSatBhy_ODuAx9KTEW5.tdMpke
	li02OvyPLTRV96JE4Y6C.QqMsIc2o1V5UgSoHwm_ih52bTuRbIUkZlM8osMEGS4Pr3f9vq5eVT91
	Ue49.AOR90bdEwk2YXTndrbanMb.iSM1Gr48.XyVQAHShV1z4yKcXXIBPhJ_GOqhFNkzPm5sYF2n
	AVReJTJzVOajzdIXbuJWhEiudtA333r4KhImE_moJCD22BOiQGOtFtwND7JXHKFUuHICF70rdn4w
	8g4X5hOEOkJo.fobNGwfOwTOA87OJzxghxDA4Woc5Q8vctvx7nDHfQ62YkDMXsYKovWzDw.Dg0Ep
	xdXzhOnSIjKGW_v0Hh0F4PLlF.fQjN0zRlTCYLAGG8f03UMgCvz2ZLAnTAC9c9bI7IWNWARwmojc
	V0PDu9PINESE9ZGkersOg6zoYJTKLYPCdNc.GPseK.8xeeIGFmdUNPHkMeddnO47AqhbtW1QEuC2
	XdCGMCuO0sE9C0oRmVI2zT34-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 12 Nov 2019 16:17:54 +0000
Date: Tue, 12 Nov 2019 16:17:50 +0000 (UTC)
From: "gholhakiii@yahoo.com" <gholhakiii@yahoo.com>
To: Yocto discussion list <yocto@yoctoproject.org>, 
	Paul Barker <paul@betafive.co.uk>
Message-ID: <1118649944.2067878.1573575470930@mail.yahoo.com>
In-Reply-To: <509b816d-82e8-4ca6-ade7-f8f0370f3060@www.fastmail.com>
References: <37113658.2021239.1573572818816.ref@mail.yahoo.com>
	<37113658.2021239.1573572818816@mail.yahoo.com>
	<509b816d-82e8-4ca6-ade7-f8f0370f3060@www.fastmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14680 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
	rv:60.0) Gecko/20100101 Firefox/60.0
Subject: Re: Building only the app and not the Linux core
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
X-List-Received-Date: Tue, 12 Nov 2019 16:17:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2067877_2000629628.1573575470928"

------=_Part_2067877_2000629628.1573575470928
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Hi Paul,
thanks for your help. I did it based on the FreeRTOS. Here is how the result looks like:
Under "yocto/build-mb/tmp/work" I have the follwoings:
core2-64-poky-linux
x86_64-linux

and in "core2-64-poky-linux" which I don't where it gets its name, I have my binary:core2-64-poky-linux/microblaze-demo/1.0-r0/test.elf


My question now is, how can I avoid hassle of building the x86_64-linux? I just need my test.elf file.
BestEm

    On Tuesday, November 12, 2019, 4:46:51 PM GMT+1, Paul Barker <paul@betafive.co.uk> wrote:  
 
 On Tue, 12 Nov 2019, at 15:33, gholhakiii@yahoo.com wrote:
> Hi all,
> 
> I would like to build my yocto project, but only my applications. I 
> mean, I would like to separate my Linux build and the application build.
> I want to just have my meta-layer which contains my application being 
> build by calling the bitbake command.
> Can anyone give me a pointer? Using the multiconfig is the way to do it?
> 
> Best
> Em
> 
> P.S. If I want to be more specific, I just want to use Yocto as a 
> cross-compilation tool for baremetal applications.

You could start by looking at how meta-freertos (https://github.com/aehs29/meta-freertos) achieves this. It has support for running the resulting bare-metal app under qemu which you might not need, but the rest of freertos-image.bbclass is probably a good reference.

-- 
Paul Barker
  

------=_Part_2067877_2000629628.1573575470928
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpfcb28bc1yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Paul,</div><div dir=3D"lt=
r" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">t=
hanks for your help. I did it based on the FreeRTOS. Here is how the result=
 looks like:</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Under<span> "yocto/build-mb/tmp/work" I have=
 the follwoings:</span></div><div dir=3D"ltr" data-setdir=3D"false"><span><=
br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span>core2-64=
-poky-linux<br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><=
span><span>x86_64-linux</span><br></span></div><div dir=3D"ltr" data-setdir=
=3D"false"><br><span></span></div><div dir=3D"ltr" data-setdir=3D"false">an=
d in <span><span><span>"core2-64-poky-linux"</span></span></span> which I d=
on't where it gets its name, I have my binary:</div><div dir=3D"ltr" data-s=
etdir=3D"false"><span>core2-64-poky-linux/microblaze-demo/1.0-r0/test.elf</=
span><br></div><div><br></div><div><br></div><div dir=3D"ltr" data-setdir=
=3D"false">My question now is, how can I avoid hassle of building the <span=
><span><span>x86_64-linux</span></span></span>? I just need my test.elf fil=
e.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">Best</div><div dir=3D"ltr" data-setdir=3D"false">Em<br=
></div><div dir=3D"ltr" data-setdir=3D"false"><br></div>
       =20
        </div><div id=3D"yahoo_quoted_3886719777" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, November 12, 2019, 4:46:51 PM GMT+1, Paul B=
arker &lt;paul@betafive.co.uk&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">On Tue, 12 Nov 2019, at 15:33, <a sha=
pe=3D"rect" ymailto=3D"mailto:gholhakiii@yahoo.com" href=3D"mailto:gholhaki=
ii@yahoo.com">gholhakiii@yahoo.com</a> wrote:<div class=3D"yqt4910493109" i=
d=3D"yqtfd38035"><br clear=3D"none">&gt; Hi all,<br clear=3D"none">&gt; <br=
 clear=3D"none">&gt; I would like to build my yocto project, but only my ap=
plications. I <br clear=3D"none">&gt; mean, I would like to separate my Lin=
ux build and the application build.<br clear=3D"none">&gt; I want to just h=
ave my meta-layer which contains my application being <br clear=3D"none">&g=
t; build by calling the bitbake command.<br clear=3D"none">&gt; Can anyone =
give me a pointer? Using the multiconfig is the way to do it?<br clear=3D"n=
one">&gt; <br clear=3D"none">&gt; Best<br clear=3D"none">&gt; Em<br clear=
=3D"none">&gt; <br clear=3D"none">&gt; P.S. If I want to be more specific, =
I just want to use Yocto as a <br clear=3D"none">&gt; cross-compilation too=
l for baremetal applications.</div><br clear=3D"none"><br clear=3D"none">Yo=
u could start by looking at how meta-freertos (<a shape=3D"rect" href=3D"ht=
tps://github.com/aehs29/meta-freertos" target=3D"_blank">https://github.com=
/aehs29/meta-freertos</a>) achieves this. It has support for running the re=
sulting bare-metal app under qemu which you might not need, but the rest of=
 freertos-image.bbclass is probably a good reference.<br clear=3D"none"><br=
 clear=3D"none">-- <br clear=3D"none">Paul Barker<div class=3D"yqt491049310=
9" id=3D"yqtfd17722"><br clear=3D"none"></div></div></div>
            </div>
        </div></body></html>

------=_Part_2067877_2000629628.1573575470928--
