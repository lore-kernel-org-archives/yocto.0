Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8DAAE00DD9; Wed,  1 Aug 2018 03:37:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AE95E00DD1
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 03:37:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w71Ab2jp010269
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 1 Aug 2018 03:37:02 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 1 Aug 2018 03:37:01 -0700
To: tugouxp <13824125580@163.com>, <yocto@yoctoproject.org>
References: <52c61bca.b741.164f4f8eeea.Coremail.13824125580@163.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <2cf2c9bb-b4a2-2339-bcbc-10038329d14e@windriver.com>
Date: Wed, 1 Aug 2018 18:41:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <52c61bca.b741.164f4f8eeea.Coremail.13824125580@163.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Is there any way to remove some package frome IMAGE_INSTALL conditionally in local.conf?
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
X-List-Received-Date: Wed, 01 Aug 2018 10:37:23 -0000
Content-Type: multipart/alternative;
	boundary="------------6C619A090F583B40E9FD5B25"

--------------6C619A090F583B40E9FD5B25
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

IMAGE_INSTALL_remove = "${@'package1 package2' if TCLIBC == 'glibc' else 
''}"
This only removes packages from IMAGE_INSTALL variable.
So if packages are not removed, you may want to use PACKAGE_EXCLUDE to 
replace IMAGE_INSTALL_remove above.

Best Regards,
Chen Qi

On 08/01/2018 06:11 PM, tugouxp wrote:
> hi folks:
>
>    i meet an problem that need keep TCLIBC both work in "musl" and 
> "glibc" environment , but a user-defined package cant work with 
> "glibc", so i need to remote them in the "IMAGE_INSTALL" variable,
> but i don`t want to offer a seperate "image*.bb" files for this reason 
> because it may be cause the customer misunderstand, so i have a 
> thought to judge the "TCLIBC" and do the remove operation during 
> bitbake runtime in local.conf
> like this in local.conf
>
>   if TCLIBC == glibc
>       IMAGE_INSTALL_remove="package1 package2"
>  else
>      do nothing
>   endif
>
> so, how the above pseudo code be implemented in bitbake config files?
> thanks for your support.
>
>
>
>
>


--------------6C619A090F583B40E9FD5B25
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">IMAGE_INSTALL_remove = "${@'package1
      package2' if TCLIBC == 'glibc' else ''}"<br>
      This only removes packages from IMAGE_INSTALL variable.<br>
      So if packages are not removed, you may want to use
      PACKAGE_EXCLUDE to replace IMAGE_INSTALL_remove above.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 08/01/2018 06:11 PM, tugouxp wrote:<br>
    </div>
    <blockquote
      cite="mid:52c61bca.b741.164f4f8eeea.Coremail.13824125580@163.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div
        style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial">
        <div>hi folks:</div>
        <div><br>
        </div>
        <div>   i meet an problem that need keep TCLIBC both work in
          "musl" and "glibc" environment , but a user-defined package
          cant work with "glibc", so i need to remote them in the
          "IMAGE_INSTALL" variable,</div>
        <div>but i don`t want to offer a seperate "image*.bb" files for
          this reason because it may be cause the customer
          misunderstand, so i have a thought to judge the "TCLIBC" and
          do the remove operation during bitbake runtime in local.conf</div>
        <div>like this in local.conf</div>
        <div><br>
        </div>
        <div>  if TCLIBC == glibc</div>
        <div>      IMAGE_INSTALL_remove="package1 package2"<br>
        </div>
        <div> else</div>
        <div>     do nothing</div>
        <div>  endif</div>
        <div><br>
        </div>
        <div>so, how the above pseudo code be implemented in bitbake
          config files?</div>
        <div>thanks for your support.</div>
      </div>
      <br>
      <br>
      <span title="neteasefooter">
        <p><br>
           </p>
      </span><br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------6C619A090F583B40E9FD5B25--
