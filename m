Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8283EE00D82; Mon,  9 Jul 2018 18:29:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10F6DE006B4
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 18:29:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6A1TVRf032477
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jul 2018 18:29:31 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Mon, 9 Jul 2018 18:29:30 -0700
To: Simon Chamlian <simon.chamlian@mpbc.ca>, <yocto@yoctoproject.org>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <c9cf4aad-d222-a12d-6167-0d9f7e6106f7@windriver.com>
Date: Tue, 10 Jul 2018 09:32:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Tue, 10 Jul 2018 01:29:33 -0000
Content-Type: multipart/alternative;
	boundary="------------40F95A948DA39456D1832658"

--------------40F95A948DA39456D1832658
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Simon,

I usually use the following steps when I need to modify source for some 
purpose.

1. bitbake A (or at least bitbake A -c configure)
*2. cd tmp/work/xxxxx/A/<source dir>**
**3. make the modification*
4. bitbake A -c compile -f
5. bitbake A

If you find the modification useful, make a patch from it.

Best Regards,
Chen Qi

On 07/06/2018 11:20 PM, Simon Chamlian wrote:
> Hi,
>
> Is there a way to keep the source code of a package to be able to 
> modify it and then compile?
>
> For example, with LTIB ( Linux Target Image Builder ), it was possible 
> with a command to extract the source code from a package, make 
> modifications and then re-compile?
>
> Thanks,
> S
>
>
>
>
>
>
>


--------------40F95A948DA39456D1832658
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi Simon,<br>
      <br>
      I usually use the following steps when I need to modify source for
      some purpose.<br>
      <br>
      1. bitbake A (or at least bitbake A -c configure)<br>
      <b>2. cd tmp/work/xxxxx/A/&lt;source dir&gt;</b><b><br>
      </b><b>3. make the modification</b><br>
      4. bitbake A -c compile -f<br>
      5. bitbake A<br>
      <br>
      If you find the modification useful, make a patch from it.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 07/06/2018 11:20 PM, Simon Chamlian wrote:<br>
    </div>
    <blockquote
cite="mid:CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>Is there a way to keep the source code of a package to be
          able to modify it and then compile?</div>
        <div><br>
        </div>
        <div>For example, with LTIB (
          <span>Linux Target Image Builder</span>
          ), it was possible with a command to extract the source code
          from a package, make modifications and then re-compile?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>S<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------40F95A948DA39456D1832658--
