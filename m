Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F15EFE0084E; Sun, 28 Dec 2014 18:36:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE68E00751
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:36:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sBT2a93L002397
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:36:09 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Sun, 28 Dec 2014 18:36:09 -0800
Message-ID: <54A0BE1C.3010306@windriver.com>
Date: Mon, 29 Dec 2014 10:36:12 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com>
In-Reply-To: <CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: changing grub.cfg per image
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
X-List-Received-Date: Mon, 29 Dec 2014 02:36:13 -0000
Content-Type: multipart/alternative;
	boundary="------------060601020109020107060100"

--------------060601020109020107060100
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/24/2014 01:14 AM, Stuart Weaver wrote:
> Hi All,
>
> I've currently got two yocto images. I would like to have different 
> grub.cfg files for each image and therefore was wondering what would 
> be the best way to achieve this?
>
> Currently I am playing with the idea of just changing the APPEND 
> variable within the machine conf file, however there doesn't seem to 
> be a way of making this image dependant. Hence, would I have to create 
> two different machines and change which machine I'm building for 
> everytime I build each image?
>
> Another idea would be to create my own version of grub-efi.bbclass 
> however I'm currently unsure of how to choose my custom version within 
> a image file.
>

meta/classes/bootimg.bbclass:EFI_PROVIDER ?= "grub-efi"

How about setting the above variable?

Regards,
Chen Qi

> If anyone has any suggestions on the best way forward, it would be 
> very much appreciated!
>
> Regards,
> Stuart
>
>


--------------060601020109020107060100
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/24/2014 01:14 AM, Stuart Weaver
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">Hi All,
        <div><br>
        </div>
        <div>I've currently got two yocto images. I would like to have
          different grub.cfg files for each image and therefore was
          wondering what would be the best way to achieve this?</div>
        <div><br>
        </div>
        <div>Currently I am playing with the idea of just changing the
          APPEND variable within the machine conf file, however there
          doesn't seem to be a way of making this image dependant.
          Hence, would I have to create two different machines and
          change which machine I'm building for everytime I build each
          image?</div>
        <div><br>
        </div>
        <div>Another idea would be to create my own version of
          grub-efi.bbclass however I'm currently unsure of how to choose
          my custom version within a image file.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
    meta/classes/bootimg.bbclass:EFI_PROVIDER ?= "grub-efi"<br>
    <br>
    How about setting the above variable?<br>
    <br>
    Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>If anyone has any suggestions on the best way forward, it
          would be very much appreciated!</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Stuart</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------060601020109020107060100--
