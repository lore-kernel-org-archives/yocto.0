Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56344C7EE25
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 09:12:08 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by mx.groups.io with SMTP id smtpd.web11.3545.1686208911015220905
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 00:21:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: loongson.cn, ip: 114.242.206.163, mailfrom: zhangjialing@loongson.cn)
Received: from loongson.cn (unknown [10.20.42.22])
	by gateway (Coremail) with SMTP id _____8AxW+qKgYFkZXMAAA--.1651S3;
	Thu, 08 Jun 2023 15:21:47 +0800 (CST)
Received: from [10.20.42.22] (unknown [10.20.42.22])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8AxZuSIgYFkp90GAA--.22137S3;
	Thu, 08 Jun 2023 15:21:45 +0800 (CST)
Message-ID: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
Date: Thu, 8 Jun 2023 15:21:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?5byg5a625bKt?= <zhangjialing@loongson.cn>
Subject: Submit a new layer meta-loongarch to the layer index
X-CM-TRANSID: AQAAf8AxZuSIgYFkp90GAA--.22137S3
X-CM-SenderInfo: x2kd0wxmldzxtqj6z05rqj20fqof0/1tbiAQAQB2SAc4EPSQACsE
X-Coremail-Antispam: 1Uk129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7
	ZEXasCq-sGcSsGvfJ3UbIjqfuFe4nvWSU5nxnvy29KBjDU0xBIdaVrnRJUUUyKb4IE77IF
	4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4
	kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8I
	cVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1l84ACjcxK6I8E87
	Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVW8Jr0_Cr1UM2AIxVAIcxkE
	cVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6xACxx1lYx0E2Ix0cI8IcVAFwI0_Jr
	0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxG
	rwCYjI0SjxkI62AI1cAE67vIY487MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_JrI_JrWlx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUJVWUXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
	cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa
	73UjIFyTuYvjxUr38nUUUUU
Content-Type: multipart/alternative;
 boundary="------------EN0qX0OnUdwCL5E20iahnMY0"
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 09:12:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60223

--------------EN0qX0OnUdwCL5E20iahnMY0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello

I would like to submit a new layer named meta-loongarch for the 
LoongArch machine to 
http://layers.openembedded.org/layerindex/branch/master/layers/. 
However, when I attempted to submit, I encountered the error message 
"Layer with this Layer name already exists." Yet, I cannot find the 
layer named meta-loongarch in the layer index. Could you please help me 
or provide some advice on this matter?




--------------EN0qX0OnUdwCL5E20iahnMY0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello <br>
    </p>
    <p><span style=3D"color: rgb(55, 65, 81); font-family: S=C3=B6hne, ui=
-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubun=
tu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&qu=
ot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &q=
uot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: n=
ormal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; white-space: pre-wrap; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-col=
or: rgb(247, 247, 248); text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial; display: inline !impor=
tant; float: none;">	I would like to submit a new layer named meta-loonga=
rch for the LoongArch machine to <a class=3D"moz-txt-link-freetext" href=3D=
"http://layers.openembedded.org/layerindex/branch/master/layers/">http://=
layers.openembedded.org/layerindex/branch/master/layers/</a>. However, wh=
en I attempted to submit, I encountered the error message "Layer with thi=
s Layer name already exists." Yet, I cannot find the layer named meta-loo=
ngarch in the layer index. Could you please help me or provide some advic=
e on this matter?</span><span style=3D"color: rgb(55, 65, 81); font-famil=
y: S=C3=B6hne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&qu=
ot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;=
Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe U=
I Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;=
 font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; white-spa=
ce: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; background-color: rgb(247, 247, 248); text-decoration-thickness: initi=
al; text-decoration-style: initial; text-decoration-color: initial; displ=
ay: inline !important; float: none;"></span></p>
    <br class=3D"Apple-interchange-newline">
    <br>
    <p><br>
    </p>
  </body>
</html>

--------------EN0qX0OnUdwCL5E20iahnMY0--

