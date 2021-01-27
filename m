Received: from sonic312-24.consmr.mail.gq1.yahoo.com (sonic312-24.consmr.mail.gq1.yahoo.com [98.137.69.205])
 by mx.groups.io with SMTP id smtpd.web11.15831.1611786217151339677
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 14:23:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=N/KkRhGi;
 spf=neutral (domain: yahoo.com, ip: 98.137.69.205, mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1611786216; bh=oeYyDwooLXAY6009H71xDYGSWUasdqNbaiDcrqo0cqQ=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To; b=N/KkRhGiPvNnfn9hBuypDMtWliTi7WOkkAy/RLOBWMjk3GvyHXgvYnSUIVH3zs0DuTHuUOzK8rinGyb9bMPf9trTEzKLJVu6GjCieEkq5SBmWPy3YUdykq1fVE/Svtnn0UjnvB0G8oFbbRl4SJy16iElgD4soG8wR5v/Em1guNhSgC2XCLAkNTDPzD9oH6XCF3Ad167nR5TpPgUChVT1vHIRphreTrOvducF6Z3xglZpdLsrCH+PNa6nfvPtt0QCJEugcdeiEddhqoC+Hh940wTsJ/1akVkVKyZQH0k+njaK2DQO0s8/8eI9afJXTpPopsIH2w6xY0JeBkgUzpmahw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1611786216; bh=vJCjAp/qgm0qchBKxQzPrxKInYXGqEeMR6dVEKDbTzS=; h=Subject:To:From:Date:From:Subject:Reply-To; b=qPn6B+kmyFc4X5piVW1SL/BBfl4wZVN1zrZH91l3en2FLn4ExEoA9q/GVk1XZdfedvrc89l4yY9/hA3mekTf0DYuCzqFUNvKZd2sodxWPyGhbDj+rrBcphX32GGBnw5kpzTZE0KWcy5A/KVSDXHFAc5lCX/8XtH0M2qBZpVCBOL3V0EhjLIPiE6We2Jy6GWVB7kpsskQ34Hdvfm8Tnn0aPill0f2xRfS5+ZVvi3gBuqLQRLGyNmy2PKjNQWQWiO8Y5QjapNR0USrR2Ym0kzR0WPFiG1GQCM8vdQKe1s2p0XVY6qrmn5M0LD12vrazuRokkWchVErQIIG5L1Z0tnZuQ==
X-YMail-OSG: LkBxtZIVM1mILo9faVwtwaM.VtSgJ614UdR7J287UKqwUofYmlllm0KrAjeBbRE
 rxpqWz1AE0oPB9wsU2Zjymi6XVarvYzKNiM2YRn6e60vKrYhTf2RQvH77yv8sWpGmyRQdXM7Qq61
 h97l5LHizYSlmHrg1jOWo1lOC4bEyFfP8oUCWwSHnGG5OMRkl4q1VZVtGgB3U.jLwSujDqFgDLfR
 9ateT34xOa4_hUlfdzXnyBwqj.Ij7TxZkFMxnjxm5blfc.pPSRFrdsFYhSV5B7iLv.VcdcIodEbS
 PDsrMVzsvqHWipchduC7vDWdzPjsid_XDvZgKjTJvtN8nJUUM3KU_PosIu4C0bWAIxg9unDlcObO
 I0UN1D0tH4A10sO2JrFAQaABmCZqCc40HTdkgLuQuBC8OF1llqAytAy3xRaM1J5LWMRxXQchZOe0
 R5sJauO7iC1L2_Ib641GfjOlVCtgF.N86tDH1p4KTCxq8x8L6VA9i7YBh3rY2XuyJbh1lJs9xyde
 IscTLCu2D67at.LoySujK7COPYM60UoSWHF5TVTkUSSkAxZ5CPPdQ_V.X3QM9ZzDVy6Gbp9fWdKF
 ywzzBs0fxG49eEhEABVHP8Z6cNe4w5QJOjjPoAst5E255.ytdCUPUgBYpHQA2SeVAhX6_4PEN78F
 Bg3fZvPHIW1I07J39kGsG4vj0pG7PbGy0eFUNWiJI4813AtO3w7oQQof.ZNMG4TGP9QQmoyVk8HU
 tddPZ2_oRMrqQuhgDeFjMgZWRLRrqb7hUQzjJrrAD1McCwmakrZ4vR1a.lmykDNPZCjMbiF0V4QD
 zaCrB3s6H3BKscRKnon1O0YPp.LtFxR5oSKUuwYyEZZntrVg9PSDyAsFFk56ZA1OBwmOS2w0grSn
 SH3bB16QpmAiDkAkV4JRpLznZ7br5w_LyAl1I5NIyyVWezDjMxhmoNsFojohEn44dvw15fdjwJH4
 v2XdvFpHIR2hdckMPEARyQJqDK7sDo2Am4I5FTPIKvjZz06DnGD_7A9MkViRb8e8_XeNNVfRbBNn
 L3ZhMachrxBLxwMtTXK2.4ki6ewYm2TJScpTcQXmXT5uROgVneEhE5th8U8wd7cRd9wgLvuwBN.g
 a2b.ynzjwVCkvvW18TfM0bf_96WD4qU.1SWY6MQBqj2mxsyJCN5Ck2ONt2JCCEBhgfOqkIbIBxQ6
 o78fKvkxUnkcGemIQd7NC00Hel9W.KS3NZl77o63xJfjfI6uVXvW0fJRi3qXTCzgjh8nszd..pqk
 sVJXIjSK.ENR6yir9RdZusjz0TcfDj.0VUirOU0ff5kr8NGnk7EnbYJRbzD9CRFAZps5Z9VjBMpM
 1QmbYsW1dOCcnk9QCx69CVLFFzE2lZfdFMM2VMzwCNHRJLyhmi_wSjaPigeI_hF24Wq_yNy5YvEr
 k4BBy2.p1y4y2W2_6FlUzL3qvmPpNrysO5QMUczuvZzbtxaIGdk.ipq2UUi.QaRSoaAB53kXFkcG
 0VGT87dzUbjomHTVYEOQlzpD2wrsKt8WqOK3z1fXudyeGafzqtD5uA6C1.NX1dPGWQIG6Phr78xK
 cKQCcljeEeolTf.VKnMQJFQ12EVyhNj2dEIMcemB.._oKudNnWwCAgu9.gFeSZN4rDkG3y7JU468
 AGOEBBT62fCOQ9H4oAXTIxVCjUXu.mZGqiWZVS8.GMAw0bqkdoMvd_IDVGucE9d_rCS3hLMXnMoC
 94rcPA7GMfwwTkFFaMlpvRVjlLvVP3oM.0r8lyGyxC3.EcCkNLA5mzWejvfG1sF0sILQ9L2jtTq2
 SYvgxZtLELPMhr9KV.wr8IbiIbaTlnyOp5_DYvvzugrCFUulEdMcvodXPCvyRlC.HM6XJVrGwEOQ
 bMNpwk.lVJ1HB6sDiSn.kL20A6mUcLQjUPjOAONxY.SYho7XTdoYUYkdW9Z_on7SygRX4i.NAmah
 sX5a6CWPatJRkVUFBTfg1pdP5U0JUeBcMycfz5cz..pcM8Fjv0JHp0XQmwZcisFtpq34cuyhOL4G
 I6GcJ7dvzQgC5_7BvlSRMIc9HiJEEUc_daBrFiTK44MFKvHTQqmPV_4XBccGNjy1.iqXYuoKv2UK
 PKOKKYR3DmclR7r3DkVPwgHQCkiw0Xa3KPWY8hmXF17vmHfLcJyQ1d6BYe7lXUh.VKdGF.IFWwn5
 Np24Vyg0g3mPg5jFpQtCjEt4jNxK26LFZBqSmHXbATHTalW7MGtzm4OcBKkO18XeeYXM.uAS.1BV
 wwt6wITHWw0rrFb4qysBxb0XMEu9AgHPNfoDd5RUPZOK05mlO2cz3EWajpznvaieXSS2YvGRk27P
 j486kucI4NG3paQWhqWRo44LfRG73JgTGJ2nEZNJ5dpaRUtHIfeuEjGMlUuxvViTPdz5zCiaTcCJ
 A1LEFlo.dj8LBZpvz87IoA_iHcqDFJqXjBtCDdr2Vp01WJgVg8yZlt2Bv2tl4Dbx1z8uaETUs__j
 kn9QFHISbRJmPXzNyeJf3AFszOlTbSkVb
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.gq1.yahoo.com with HTTP; Wed, 27 Jan 2021 22:23:36 +0000
Received: by smtp408.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 69009c6dfcc26d2fb6bbc7aa4b14f848;
          Wed, 27 Jan 2021 22:23:32 +0000 (UTC)
Subject: Re: [yocto] Including binary application as part of the image output
To: yocto@lists.yoctoproject.org
References: <10e8c340-6435-6158-5d9f-0d00fb4afb4c.ref@yahoo.com>
 <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
 <CAMKF1srDLVSprz9cx0h_1eeb4dSF=cxHFw3XwmLw=p1SVuq5WA@mail.gmail.com>
 <165E351E7C6647F8.12137@lists.yoctoproject.org>
From: "chuck kamas" <chuckkamas@yahoo.com>
Message-ID: <9bfbb103-4f10-c5b9-cfb4-a8a623e34b1f@yahoo.com>
Date: Wed, 27 Jan 2021 14:23:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <165E351E7C6647F8.12137@lists.yoctoproject.org>
X-Mailer: WebService/1.1.17642 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: multipart/alternative;
 boundary="------------57592EE03B8D66027F594E80"
Content-Language: en-US

--------------57592EE03B8D66027F594E80
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

OK,  Making some progress. I added a package_tar to my conf file and now 
I get a nice little tar file with my app and its helpers in it! I might 
also play with the do_deploy command and see if I can just copy it over too.


Thanks all!


Chuck


On 1/27/21 1:48 PM, chuck kamas via lists.yoctoproject.org wrote:
>
> Thanks Khem and Chuck!
>
>
> Yes, the application is built in its own bitbake recipe. I do see that 
> there are rpm files built for the application, and that may be a way 
> to upgrade the application in the future... but for right now I would 
> like the application just copied into one the deploy directory 
> unmodified. I am beginning to think that there is no easy way to do this.
>
>
> Chuck
>
>
>
>> Your company's application should be built within its _own_ bitbake 
>> recipe and then pulled into your image with an RDEPENDS entry in your 
>> image build recipe.
>>
>> If you do it that way, you can find the packaged version of your 
>> application in the tmp/deploy directory automatically.
>>
>> ..Ch:W..
>
> On 1/27/21 11:16 AM, Khem Raj wrote:
>> On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via
>> lists.yoctoproject.org<chuckkamas=yahoo.com@lists.yoctoproject.org>
>> wrote:
>>> Hi all,
>>>
>>>
>>> As part of our image we build our company's application. This
>>> application becomes part of the image and is executed when the image boots.
>>>
>>> My question is how to have the binary image also be available along with
>>> the image's wic file? Is there a line I can add to a recipe to have it
>>> copy that image file to the tmp/deploy directory or other appropriate
>>> directory so that it is available?
>> you can perhaps make a recipe that packages your binary and then add
>> it to IMAGE_INSTALL
>> also look into binconfig.bbclass
>>
>> if you need more post processing, then perhaps look at using
>> ROOTFS_POSTPROCESS_COMMAND
>>
>>> Thanks!
>>>
>>> Chuck
>>>
>>>
>>>
>>>
>>>
>>>
>
> 
>

--------------57592EE03B8D66027F594E80
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>OK,  Making some progress. I added a package_tar to my conf file
      and now I get a nice little tar file with my app and its helpers
      in it! I might also play with the do_deploy command and see if I
      can just copy it over too.</p>
    <p><br>
    </p>
    <p>Thanks all!</p>
    <p><br>
    </p>
    <p>Chuck</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/27/21 1:48 PM, chuck kamas via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:165E351E7C6647F8.12137@lists.yoctoproject.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Thanks Khem and Chuck!</p>
      <p><br>
      </p>
      <p>Yes, the application is built in its own bitbake recipe. I do
        see that there are rpm files built for the application, and that
        may be a way to upgrade the application in the future... but for
        right now I would like the application just copied into one the
        deploy directory unmodified. I am beginning to think that there
        is no easy way to do this.</p>
      <p><br>
      </p>
      <p>Chuck</p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p> </p>
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
      <div class="moz-cite-prefix">On 1/27/21 11:16 AM, Khem Raj wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CAMKF1srDLVSprz9cx0h_1eeb4dSF=cxHFw3XwmLw=p1SVuq5WA@mail.gmail.com">
        <pre class="moz-quote-pre" wrap="">On Wed, Jan 27, 2021 at 10:32 AM chuck kamas via
lists.yoctoproject.org <a class="moz-txt-link-rfc2396E" href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org" moz-do-not-send="true">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a>
wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Hi all,


As part of our image we build our company's application. This
application becomes part of the image and is executed when the image boots.

My question is how to have the binary image also be available along with
the image's wic file? Is there a line I can add to a recipe to have it
copy that image file to the tmp/deploy directory or other appropriate
directory so that it is available?
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">you can perhaps make a recipe that packages your binary and then add
it to IMAGE_INSTALL
also look into binconfig.bbclass

if you need more post processing, then perhaps look at using
ROOTFS_POSTPROCESS_COMMAND

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Thanks!

Chuck





</pre>
          <br>
          <fieldset class="mimeAttachmentHeader"></fieldset>
          <pre class="moz-quote-pre" wrap="">
</pre>
        </blockquote>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------57592EE03B8D66027F594E80--
