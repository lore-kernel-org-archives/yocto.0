Received: from sonic302-22.consmr.mail.gq1.yahoo.com (sonic302-22.consmr.mail.gq1.yahoo.com [98.137.68.148])
 by mx.groups.io with SMTP id smtpd.web09.15534.1611784121468409363
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 13:48:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=iJE5RNEc;
 spf=neutral (domain: yahoo.com, ip: 98.137.68.148, mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1611784120; bh=uF6UmA/tfMk7QNXnYxfJphJRLevUrcatacsdfNIof6w=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To; b=iJE5RNEcf9otLTWRJ6vUupIGf00FH+axk9ZN5tQXuG0353XlJS+r8FqFSu3LE3e0Dfh2r4ObD0ihd66GAVBZ+D2kkohwbaZIU3s0q4rweqp/HWer1zEeJ5z2ZGMhQ9mi45Iw5LLRbwmrsQ1HPWlFPOW5PO/ORqaXPZJGuIM9AT4hZLfg6z/YL0KuqEjdMw7GeAfu2O1TJmH9nsTYhZs5cy/XPWfZd2faXNfYYZAd+P0P96C7b2y22SBNVOmQqxzUU+W+0mffV+9fLNk+j01LoCCH06bSHprmgv5QIA0Q3AphTbYlk+YgwAuPRKAZj9farLNqg8WmJmRaG815aOtiEw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1611784120; bh=3tGGcyYJYx34Kl7YBDaULQHPLELGf5s2Nkan5MP1kLL=; h=Subject:To:From:Date:From:Subject:Reply-To; b=UqY63iIYYAYn/hnA9ClsTJjAOCvZt6y2vs8s8SfjvAZTn1ez56RuOXw2VUY28neXjVylj89iRlF0BvdtBe8s0A2HjYsVmyrhO4I6qLY9hBjiRoYXFqkHxBO7fSzIPqBlAw6mvtDQkDLItemhYnBekWWcFMc+DKV77Jcs2Gl9bu84j0y/ZX7a8xl9NFERzmgPPDFSA5eO+QM1Rf+9ZypUPJLxjhmqMvKpSDDXqs0VBA1PffrPs0/bwe1bg5eH3sH0rViM+0215n/+6osYjv6hmY2RGZpDzMCkpyylxvbOIN7X92dBlzhvrVrLvVdwSg3+CWj1P87GkLShvcoquvC//g==
X-YMail-OSG: Tf_B744VM1mqRrro3T4ocGriufxOPaWhJOuilUlVsEQUiUMoKlpH62g0uO3Ja2k
 xm5VRtDDXpT6YvHCZwHBs8RXjIYEkN_QaxL8igNr3SiL21UNV1Uendctey0.lddVvapoHIBrhPh3
 BCWU9jxokl5mZekq5DEoY2Wx3qW0Gp5t96dQGplZPWTMPYtpCTxJSpiE7VJ_LAHrvbkS7zSBrMdP
 GvrEj_hq44fJtrB98bv6Kfu9uJ7Ij9nwl29JiwNsRFoFZn7X2lQUvyji9PP8YYT9SefgzfkNp73q
 dsNme6ttQ32EwffyCA0k1kZwuvBkmr71QZ.ddlRAPuhuibpYKAMZqO9vhbjW7i3S0_sExcbj7rIp
 gp9BHbkMFL8zMN_42J4ehhR37827geidUvwA3mSbTy6Mk7yaZHgnaiUcwQ8CuvZZ4JFJH3O4DPQG
 Xox5IntHucwUkTEZuFGU3Lpg9GVFiOhsjTNLpN8Ey_kH5evsGoC7Jb7Mu0gWPEtpNXSlnB5uPWSd
 ToTMU1THSgrJN2BCp3MXEmviPnnkb7u6AXXGefmNF3U0JoKrkbhkSQ4MpZUWtUFuHsAl2Ml5Crw9
 t3uhHtU1SE2TlAEzpKUHNu1aJcdeQiRhayql7qWqW_TMor4ga74gddSmp7l7RuMu_trur0EP5NY2
 bH3dEuzSG0JlcmCUpafNB7VHn5HBEpv_Pk3L.qLMiGBYDpwEiUCJHD5gtYKIf_NML9FkgMUjj3MM
 fatunOwyPPGQ8LhyLejCnrqQhwlEP0uJngUMd730TSPwtw6AFcLSiCw.c872ZebVErfPldou4l_J
 wLxI.Lo5izIBKI4pNfiHdITpnQZtMlx8NGMprtV32pHsepSicXXhLQGufSVHXM8DLsW8DoDz8cT2
 VpvHZfCBZgYC1Vf9Y6w9QUMW1nvtAlqfpn816crAl3fREMJ5oXSmrp6a7OetpN8mVBtzixt490SZ
 QodhG4BvPpY4ai6Fi00P2DwYEkkvveNyTTCYVq8eCauW8db72EGOr9_yNlnLEJy.vQ4fNMmPd3Hz
 .IuPpSE_j8a.GWdmzm5c1PKJUaZ70_X0ooitWfVUlAfE7Hi5bOKoG0mRvaAsOfkX.5k13lCElEHF
 ZILCxlSr7QLcnadKuITqRr953tA1O.vavsVZ4pJdQ1TYDetLT2Bw8Hnhkx_NDeyWK8u.O9vvtNIT
 eSHQOQUVxLvsRFAXUTbR5XvtS0VJ0OXimvLROjMTxKlKZiO_7.qkzWIF6AYFrwwszrHDPxjn31RN
 N850BAhbCdlADn_uR46M5JHz0MkUs5OXG0ai9HIu2GSFpBSzmR.l3T1RqXxbEqDNFfcVrtKEn15r
 rT4I.t2nZUKifJ_lIzIMEBodh7cFldkV_NB_d1iMnLgW9hQmFiNUn2YmJOqX4zsihtkLTmiFN2Sf
 dGxYqk9xmzNHtvDdemmEu_7qvQ5IDkg_8jIru9M1ktUVV2AY__p1xDaVKynE0Vqte7jRirCyXNIT
 fy3gBFdXsgiX3bLgHgrzyi9dJrMv5jMwdavsTRBALrVF3t9B_mW8sFNoUeRuJz6sISLxh5w96Zco
 uSLCmC8ctVRc0lfMagZLGmB6KvldtMc60Y.i1XeLW2_lbIS.sb1D8YYR2vjyjY4VEKdNMNftG3hv
 nTLI4xuLs6nMHGefI.94gcArrEiKK5r9DpIQ_bGLpC05H3lZ_brkX4AA8OuCCCPNeg11uHdtlylq
 QZc1o_SuasCK.5I5bewkQMvf.gzCLEsTHOQUjLLIw4UBAzdvSfj.9g345Y5_r8.4cXLXg8KclFd_
 CUTdfOrmrYuh9_UbledaZp.MPxSuoayHa4jCIYgE1piUFjh1iSiab5X_PUPnyUSQP2D2NnXNXrTQ
 kru.0yhcWHUWaRsb2DDMyoqcrTbYw5u0xdbzAVvAUUrcKf3Mdr_181dUg9UCK8f5tppASQy4rThn
 13MUqobzTEbEOmxLbc_8I1NvAKnPL_uBh_JHnAWTeWvt87R_2El5MoGBO8eGAwPo2m5Df4WULOw0
 ZDO8tk34QGFNhL.TTkjdJYizkWqUMSSawTF8yu4Qlhf6KX7pzCoHXKs2lOLqTdN56df2ZwaAPi3m
 vKKQhm8uGDO1tCLu.2YoTGLhiUkkcNKO9YmFktvA92d.qNaYMRHxxUEpg6L9ScMd.1P8iPJZdVzB
 Q_XWZAZOwhCiiYnWJFw.IrDqb1NPXBzzQoDu_DrnYrPA_w6DH6osbYb9lLiotbxJfiY9a2j1kPkV
 QO3ChiVfNYP1QsMAYO9vdqXutVZhc5BpI30tCOoo4qxu8kM9V.jbWcZe8ShDgLErdIVEl.NmX3GI
 VQQpWnet_ZL2Wb_FWiBq6IXp8DReOS_9NgpKJs4OnqDBoi7XYJjI9ed66hpfdgZasv20r5MwD8WN
 h7tZHsaFOpx91QsgLO2aFU7O4VZWzhGv.mXVNpw3.aLF_Y_dbR97XWlwuTjdhWBZZzGOnXcH1pMR
 kPyhlVIrf4Xzsi4ljwKSbypwZA67p0rnn4Q--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.gq1.yahoo.com with HTTP; Wed, 27 Jan 2021 21:48:40 +0000
Received: by smtp421.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 6dbfea61795d490d29b31ac260a1d41c;
          Wed, 27 Jan 2021 21:48:38 +0000 (UTC)
Subject: Re: [yocto] Including binary application as part of the image output
To: yocto@lists.yoctoproject.org
References: <10e8c340-6435-6158-5d9f-0d00fb4afb4c.ref@yahoo.com>
 <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
 <CAMKF1srDLVSprz9cx0h_1eeb4dSF=cxHFw3XwmLw=p1SVuq5WA@mail.gmail.com>
From: "chuck kamas" <chuckkamas@yahoo.com>
Message-ID: <07614559-34fe-4d21-3182-e1b748917b1a@yahoo.com>
Date: Wed, 27 Jan 2021 13:48:36 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srDLVSprz9cx0h_1eeb4dSF=cxHFw3XwmLw=p1SVuq5WA@mail.gmail.com>
X-Mailer: WebService/1.1.17642 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: multipart/alternative;
 boundary="------------E347D9343F3F5081290FF7BF"
Content-Language: en-US

--------------E347D9343F3F5081290FF7BF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks Khem and Chuck!


Yes, the application is built in its own bitbake recipe. I do see that 
there are rpm files built for the application, and that may be a way to 
upgrade the application in the future... but for right now I would like 
the application just copied into one the deploy directory unmodified. I 
am beginning to think that there is no easy way to do this.


Chuck



> Your company's application should be built within its _own_ bitbake 
> recipe and then pulled into your image with an RDEPENDS entry in your 
> image build recipe.
>
> If you do it that way, you can find the packaged version of your 
> application in the tmp/deploy directory automatically.
>
> ..Ch:W..

On 1/27/21 11:16 AM, Khem Raj wrote:
> On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via
> lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
> wrote:
>> Hi all,
>>
>>
>> As part of our image we build our company's application. This
>> application becomes part of the image and is executed when the image boots.
>>
>> My question is how to have the binary image also be available along with
>> the image's wic file? Is there a line I can add to a recipe to have it
>> copy that image file to the tmp/deploy directory or other appropriate
>> directory so that it is available?
> you can perhaps make a recipe that packages your binary and then add
> it to IMAGE_INSTALL
> also look into binconfig.bbclass
>
> if you need more post processing, then perhaps look at using
> ROOTFS_POSTPROCESS_COMMAND
>
>>
>> Thanks!
>>
>> Chuck
>>
>>
>>
>>
>>
>>
>> 
>>

--------------E347D9343F3F5081290FF7BF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Thanks Khem and Chuck!</p>
    <p><br>
    </p>
    <p>Yes, the application is built in its own bitbake recipe. I do see
      that there are rpm files built for the application, and that may
      be a way to upgrade the application in the future... but for right
      now I would like the application just copied into one the deploy
      directory unmodified. I am beginning to think that there is no
      easy way to do this.</p>
    <p><br>
    </p>
    <p>Chuck</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p>
      <blockquote type="cite">
        <div>Your company's application should be built within its _own_
          bitbake recipe and then pulled into your image with an
          RDEPENDS entry in your image build recipe.</div>
        <div><br>
        </div>
        <div>If you do it that way, you can find the packaged version of
          your application in the tmp/deploy directory automatically.<br>
        </div>
        <div><br>
        </div>
        ..Ch:W..</blockquote>
      <br>
    </p>
    <div class="moz-cite-prefix">On 1/27/21 11:16 AM, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1srDLVSprz9cx0h_1eeb4dSF=cxHFw3XwmLw=p1SVuq5WA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via
lists.yoctoproject.org <a class="moz-txt-link-rfc2396E" href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a>
wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi all,


As part of our image we build our company's application. This
application becomes part of the image and is executed when the image boots.

My question is how to have the binary image also be available along with
the image's wic file? Is there a line I can add to a recipe to have it
copy that image file to the tmp/deploy directory or other appropriate
directory so that it is available?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
you can perhaps make a recipe that packages your binary and then add
it to IMAGE_INSTALL
also look into binconfig.bbclass

if you need more post processing, then perhaps look at using
ROOTFS_POSTPROCESS_COMMAND

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">

Thanks!

Chuck





</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">


</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------E347D9343F3F5081290FF7BF--
