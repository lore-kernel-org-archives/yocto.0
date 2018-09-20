Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7682DE00BB7; Wed, 19 Sep 2018 23:34:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 030D2E00BAA
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 23:34:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8K6XRD1001258
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 23:34:27 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 19 Sep 2018 23:34:14 -0700
To: <yocto@yoctoproject.org>
References: <65839221.8839.165f59e72fc.Coremail.13824125580@163.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <3466d7d7-26ad-4c3a-bb19-695ff9bc7766@windriver.com>
Date: Thu, 20 Sep 2018 14:39:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <65839221.8839.165f59e72fc.Coremail.13824125580@163.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: why must add the "mesa" dependent on bbfiles which already has a "libmali.so" for mali gpu based system?
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
X-List-Received-Date: Thu, 20 Sep 2018 06:34:59 -0000
Content-Type: multipart/alternative;
	boundary="------------976DFDF7A0C6EC8461819524"

--------------976DFDF7A0C6EC8461819524
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Which recipe and what configuration?


On 09/20/2018 02:15 PM, tugouxp wrote:
> hi folks:
>
>    on my  yocto probject if the mesa depens removed from the recipe, 
> the compile cant go through, i dont know why because i have already 
> has a "opengl" implementation by
> libMali.so library.
>
> so, can you tell me why? thanks for your support.
>
>
>
>
>


--------------976DFDF7A0C6EC8461819524
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Which recipe and what configuration?<br>
      <br>
      <br>
      On 09/20/2018 02:15 PM, tugouxp wrote:<br>
    </div>
    <blockquote
      cite="mid:65839221.8839.165f59e72fc.Coremail.13824125580@163.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div
        style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial">
        <div>hi folks:</div>
        <div><br>
        </div>
        <div>   on my  yocto probject if the mesa depens removed from
          the recipe, the compile cant go through, i dont know why 
          because i have already has a "opengl" implementation by</div>
        <div>libMali.so library.</div>
        <div><br>
        </div>
        <div>so, can you tell me why? thanks for your support. </div>
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

--------------976DFDF7A0C6EC8461819524--
