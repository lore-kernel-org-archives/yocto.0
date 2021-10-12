Return-Path: <chuckkamas@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D9B5C433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 04:33:03 +0000 (UTC)
Received: from sonic301-20.consmr.mail.gq1.yahoo.com
 (sonic301-20.consmr.mail.gq1.yahoo.com [98.137.64.146])
 by mx.groups.io with SMTP id smtpd.web08.9196.1634013182057685877
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 21:33:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=YotzhleB;
 spf=neutral (domain: yahoo.com, ip: 98.137.64.146,
 mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1634013181; bh=jM8kQusGD9DsjliW3NwJSZcedwsMbBH3lEdCIlxIhN8=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=YotzhleBN2jeEnE6y1zPYjOuD3NbXy/a+mbwxJ3p2WUg5MYvttvV68+3+05WF4wEjmKmrr3rhiSnWVVYui2c5XXX2xAsYcU5KMJSnYvRMIfJTiJZDLcLJD0LhGbHJ4WeitRyHaeCPBV0+PXJjuG1wgvyvZZSXxL9AMmoseFsbiF4yQHjYk+g0dGa2O3H8jFjq8mXvzdU18tekyfO0Nk7uKlm0J8TeU+cURKixM5tXfjRMJFYEkrGAP79ojZeXwVVPAfr0XZCKG7j7VOG+3+N5obaSpHftSMsmSQYDUR4qL2e1pfBn7l6u6SbE/FdWo4Xqm+92ddhjwBuxj4WknJCjw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1634013181; bh=DSXe9+esEbGGhDV3dfASBX+jnQHbujPIhT4fH+SWNLr=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=FEr8iLe7ujsbfSFbmtXHrQTkwJg3BkcUtEMyFtray9BLsQbBG/042L/RLyhzrSnDrq7xtvNsaxfwvZNtC67fN2zJAHcaBxFbKIn6f5Bo2UAZUWe5dUg2htZs1CIz6aF51GCK5kpFJ+vYfnQVpWF+kRymm3qSHkZDiMwzFBof6ykP9xnU9W/gE8ylhKt68KVCyr+bItBxRJ+1l3AvfY1Gt4zdx8SDfZRI2wpqMwFyhN0XP3Qv+FGo+nlI0Nx/jfr+b0iuL653AC3igeeFQsZrQzeqFJ1BRyQ5hSSnvt11jvcRFMP5Oqu3/357t9KhtIc1IMoLEbmIvhe5LSAW0Eknsw==
X-YMail-OSG: vg.JPD8VM1krDfLoDR3rZjlASSBqxK41hrvShMJ63Wk3Qs14dob5y_bPUljtmiJ
 823xPza8AcJy4IMhIzwTfkCIKYOffGOMXjkh2xCzc7im6qlIS61XPmQvMwi6IXufCnuBuoCF.XVg
 Jo8FGJrJQs3gkNCWlJnllIf9VxaZy7z12O4rYDsz4gMgCXWWfpWjU1x5BiO2mrQJzIGJLu6PBc8q
 hMWVyasMx8WEVLyyTMryx9NQ.CYI0aO6xo45T.yWtcgvGusORBLlRyjS4gLFvC_YRkNJzZlCJgDj
 cswkZsvs1wgus623ro4iMseJXMVBoRqePyRwSicL7mwZxgrzkeIbYWZNaTl8_UGk5h95UPa6lSlv
 a2roG9TOJbelV7u4H4QL0uQbaen1JTdoenCj_Fp7Skf9iKF.fflew0KxN8YfHUubGW.X1NvZSpmT
 JcrHsqmTD8AYoAdTQLNxKc08BnjZIxyc4FymT.JNF48moFINPZserZ5_KckiRD2zxKXz1Ur5SvRc
 Q_itF4jlgpDxdNGrldIomggmivdIpywZgUgoL_CfS7aobneEuVys7YPN_AS71QHakLEJUW1ob6mP
 8vHo7USVjIOq2N6tGyGIWc.LNVlNGO4bdmoiTtHD4hBEmyTTgIol1MqVJuK8ghVe8L3sstd1frcy
 kjh9q7Gsy9RPUyKfjQfhJ4M6F4NOu3hsg8fSz6hGjgFzSFGNFY.rnKvFqFrpR385Gmp_NWmG0MtP
 vZtdVol2PxrLvBwEoB8Hp_4RFvBCiIzyWC.7MDeSR.rNvCysqzjZrNHp7BzObkE4EIYJHO90Acvj
 7MMVxYBZtK1gqN3K1YrOeTbzIPlp1pJF_9g6a2Gr35P8cpAIWwEOvXeOPnrtDyItiTbE69BDY4zJ
 DN1TP9CQzs5ROg.gFRFp7w1NGzyvzXre5vrcLarJTCMy1eq_pMQPXS5WT9gao33z5QijFovail9P
 .qoY1ZtL_.D8YhXInUmWbyztrlNygRam3eIKV5TbIdhRA5Yw7AEXxqWctH5B9dWX1gml84hoQX8a
 PCR6fmVn9bJcET38MxUVotL_8PlN7VJys_6zdrm_nrBdKFKcr7GN0Stem.jTN_71xkX4OoEDg.a4
 v9j3zOKoFs2zMFJTVimwCztOZWSZT5IyZgbXl.4lpl0cE8JIxt_kNLtv.AQw9ZyJ0tJGUBOxVD92
 pZjREEZhUdrR7mLnDlSUK3RBoDHUWJReHxW.JP3e3a14DZSOiSvyf3PlxKMrJnfcqdbyy7mD_4wk
 VCjINB9pvls.6tmlKk4kbhW7oV9.uLOKP5tQGfYg.ZWi94bQOijO6R2dBwZ8y2DTRoZKjhsyiwCO
 3I8acHxgbA00FsU.VkCZ1qZXbO0ZaGhCMz8r9OGaV66jc9d1wA9lkP3g8m6v1u_jaM484Z3xRadS
 152xUun0bbgQAS59m2s.5COsMoFobQT7_Aj7JTlP2bPGFrNrCzfO0QsJg4FeJUXfI5mylUOmvY83
 U40xOfIbCOJyt._6vGUU_Qhip00ur1dzAjialGlh186GrK7mRdkF1lrTJ.AU_zRR8Ka5LoDtEgE4
 mZXvQJkc84Lv5sYftoNuWxan5t2p1amMJrt1SMg2gGZaTldhm1bAGoG1qglPURWY_cUKEFb3mAtq
 ngJVH.26Uxvhal50GKO3WfGi_uElb2txZd9jK1b4zm9kLQZ9E4wId8s7fV79v1pDzBOC3lG5d_.9
 bTlTwSflSS_g_irI99yzMfIemLAHKPfg5fIZRO6PvokNQKegyTaG0omacWllS4NBN1xZDCYX.ADW
 lvHQ3NCPYqDxUwxS76_UZ9kyUX5b9dzQ0NnXXFGuwiO.tbUPWQrnmlmb.YbJEYrSzJcTJcwy4dYE
 5Eo49ajtPUYieglFKtRyhvj26vC28K2TCE8FuFN1Se_EG8IA6w7Vz1V0TGB1VBfQQBoSqLseWh7x
 JTWVuSktJR5E3.rr_L.8iFf9a8G5r2JmnnOa2b_OeZKg5f2yV58Uub.HXfrvmrhHUdi7Fw9WArDy
 8IjEg6uidqvNXH8KjxH6jLv9rzZC74j3WuVgQ.QIlGw24QvPHtfU4SUcyrRVGQ6dhDpBBaoqYbH_
 3VN4xN7ed0xOj1MbYFa7W1O1qHUOUUgg2nlxu4M7jbMGipvSQw01x35BP74gVVIU2E6cQYMGJeTg
 5f_Fks3WkkRu7wQS5ckerP8ZyQ4gHuNO4_HBgwBZCFFea_9aYAsnUFSaDjzQA331_vzkGjjsL.G8
 ktqr.gA7yZFsIlFBt28CU48J7qRrfnGi1bpXQwgoDaxTqVqVVDeVbZvektwltrGSPTC6T6S1vTd1
 HlMlr8SFzBg9e3CITJ3SJTeIP066Bu1BChL7DOuKq3_8.o_Rt.ebmGQradHOgYNUVJQ--
X-Sonic-MF: <chuckkamas@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.gq1.yahoo.com with HTTP; Tue, 12 Oct 2021 04:33:01 +0000
Received: by kubenode512.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
 Server) with ESMTPA ID 3e7d80eef81c0d541dd5ce3215a85fc9;
          Tue, 12 Oct 2021 04:32:59 +0000 (UTC)
Subject: Re: [yocto] building the kernel's usbipd daemon
To: yocto@lists.yoctoproject.org
References: <71f6581d-6d01-51a8-7c58-3582d57509f9.ref@yahoo.com>
 <71f6581d-6d01-51a8-7c58-3582d57509f9@yahoo.com>
 <CADkTA4OiV40NZNYiUggSGjRQL62qW6gLbp8979ZfwY=8iR9RAg@mail.gmail.com>
From: Chuck Kamas <chuckkamas@yahoo.com>
Message-ID: <b90c3301-ca4a-3191-3a85-6084997dc9e0@yahoo.com>
Date: Mon, 11 Oct 2021 21:32:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: 
 <CADkTA4OiV40NZNYiUggSGjRQL62qW6gLbp8979ZfwY=8iR9RAg@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------68CF0C22B020FB79C47A842F"
Content-Language: en-US
X-Mailer: WebService/1.1.19116
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 04:33:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55027

This is a multi-part message in MIME format.
--------------68CF0C22B020FB79C47A842F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for the quick reply. I looked at the perf recipe, and its quite 
involved. Is there a simpler recipie to use as a template? Perhaps one 
of these?

meta-openembedded/meta-oe/recipes-kernel/bpftool/bpftool.bb

meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb

meta-openembedded/meta-oe/recipes-kernel/cpupower/cpupower.bb


all three of these appear to be basically the same very simple bb file.


Chuck


On 10/11/21 5:46 PM, Bruce Ashfield wrote:
> On Mon, Oct 11, 2021 at 6:16 PM chuck kamas via lists.yoctoproject.org
> <chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:
>> Hi all,
>>
>>
>> I've googled most of the day, but to no avail. How does one compile and
>> add to the image the daemon usbipd? Is there a bitbake file already for
>> this? The code is part of the kernel found in the kernel tree:
>>
>> KERNEL_SRC_PATH/tools/usb/usbip/src
>>
>> and is invoked from the KERNEL_SRC_PATH/tools directory by calling
>>
>> make usb
>>
>>
>> from:
>> https://wiki.st.com/stm32mpu/wiki/How_to_build_Linux_kernel_user_space_tools
>>
>> PC $> cd <Linux_kernel_source_path>/tools
>> PC $> make <tool>
>>
>>
>> I would think that there is a preexisting recipe.
> There isn't one that I've ever heard of, and the layerindex
> (http://layers.openembedded.org/) confirms that nothing registered
> with it provides that recipe.
>
> So if you need it, you'd have to create a recipe .. and submit it to
> somewhere like meta-openembedded if appropriate.
>
> Have a look at the perf recipe for one of the ways we build tools out
> of the kernel source. Something similar will work in this case.
>
> Bruce
>
>> thanks,
>>
>> Chuck
>>
>>
>>
>>
>>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55024): https://lists.yoctoproject.org/g/yocto/message/55024
> Mute This Topic: https://lists.yoctoproject.org/mt/86249103/1051501
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [chuckkamas@yahoo.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--------------68CF0C22B020FB79C47A842F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Thanks for the quick reply. I looked at the perf recipe, and its
      quite involved. Is there a simpler recipie to use as a template?
      Perhaps one of these?</p>
    <p>meta-openembedded/meta-oe/recipes-kernel/bpftool/bpftool.bb <br>
    </p>
    <p>meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb
      <br>
    </p>
    <p>meta-openembedded/meta-oe/recipes-kernel/cpupower/cpupower.bb</p>
    <p><br>
    </p>
    <p>all three of these appear to be basically the same very simple bb
      file.</p>
    <p><br>
    </p>
    <p>Chuck</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/11/21 5:46 PM, Bruce Ashfield
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADkTA4OiV40NZNYiUggSGjRQL62qW6gLbp8979ZfwY=8iR9RAg@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Mon, Oct 11, 2021 at 6:16 PM chuck kamas via lists.yoctoproject.org
<a class="moz-txt-link-rfc2396E" href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi all,


I've googled most of the day, but to no avail. How does one compile and
add to the image the daemon usbipd? Is there a bitbake file already for
this? The code is part of the kernel found in the kernel tree:

KERNEL_SRC_PATH/tools/usb/usbip/src

and is invoked from the KERNEL_SRC_PATH/tools directory by calling

make usb


from:
<a class="moz-txt-link-freetext" href="https://wiki.st.com/stm32mpu/wiki/How_to_build_Linux_kernel_user_space_tools">https://wiki.st.com/stm32mpu/wiki/How_to_build_Linux_kernel_user_space_tools</a>

PC $&gt; cd &lt;Linux_kernel_source_path&gt;/tools
PC $&gt; make &lt;tool&gt;


I would think that there is a preexisting recipe.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
There isn't one that I've ever heard of, and the layerindex
(<a class="moz-txt-link-freetext" href="http://layers.openembedded.org/">http://layers.openembedded.org/</a>) confirms that nothing registered
with it provides that recipe.

So if you need it, you'd have to create a recipe .. and submit it to
somewhere like meta-openembedded if appropriate.

Have a look at the perf recipe for one of the ways we build tools out
of the kernel source. Something similar will work in this case.

Bruce

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
thanks,

Chuck





</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#55024): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/55024">https://lists.yoctoproject.org/g/yocto/message/55024</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/86249103/1051501">https://lists.yoctoproject.org/mt/86249103/1051501</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:chuckkamas@yahoo.com">chuckkamas@yahoo.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------68CF0C22B020FB79C47A842F--

