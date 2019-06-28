Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8DD8E00DA7; Fri, 28 Jun 2019 02:40:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB46E0096F
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 02:39:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5S9cSEG019599
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Jun 2019 02:38:59 -0700
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Fri, 28 Jun 2019 02:38:34 -0700
To: Pawan Badganchi <pawan.b@elpisitsolutions.com>
References: <980292376.238401.1561633028960@email.ionos.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
Date: Fri, 28 Jun 2019 17:50:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <980292376.238401.1561633028960@email.ionos.com>
X-Originating-IP: [128.224.162.148]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-builds] Yocto build Issue
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
X-List-Received-Date: Fri, 28 Jun 2019 09:40:05 -0000
Content-Type: multipart/alternative;
	boundary="------------B35D95EA11E68B265BD5F85B"

--------------B35D95EA11E68B265BD5F85B
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Forward to this yocto mailing list.
When you have problems regarding yocto, use this mailing list.

Regards,
Chen Qi

On 06/27/2019 06:57 PM, Pawan Badganchi wrote:
>
> Hello sir,
>
>            I am adding IMAGE_INSTALL_append = "kernel-modules" in 
> local.conf.When i build with  bitbake core-image-minimal command this 
> kernel module is loading.while i build with bitbake 
> atmel-qt5-demo-image command kernel module is not loading.
>
>           Please tell us what is the issue.
>
> Thanks & Regards,
>
> Pawan
>
>
>


--------------B35D95EA11E68B265BD5F85B
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Forward to this yocto mailing list.<br>
      When you have problems regarding yocto, use this mailing list.<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 06/27/2019 06:57 PM, Pawan Badganchi wrote:<br>
    </div>
    <blockquote
      cite="mid:980292376.238401.1561633028960@email.ionos.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <p>Hello sir,<br>
      </p>
      <p>           I am adding IMAGE_INSTALL_append = "kernel-modules"
        in local.conf.When i build with  bitbake core-image-minimal
        command this kernel module is loading.while i build with bitbake
        atmel-qt5-demo-image command kernel module is not loading.<br>
      </p>
      <p>          Please tell us what is the issue.<br>
      </p>
      <p>Thanks &amp; Regards,<br>
      </p>
      <p>Pawan<br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------B35D95EA11E68B265BD5F85B--
