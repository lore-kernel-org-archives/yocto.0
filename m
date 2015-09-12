Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECC92E00CA2; Fri, 11 Sep 2015 17:51:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A3E8E00B68
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 17:51:09 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so56980303igc.1
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 17:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=gSTvhUc/6V4ffKJrRohhaYRhJXsgDlVKQ8UVPmacpL8=;
	b=fOuyfXIo6X7tA3jh4nZxj7KdI0CgZOEUKhxgxoipmCriG0TwkAh+y9lRGtJOn4j2/6
	7NRZ/tYf6gpohdiIhCin3mMTY82GxJLopy/DEWyLWHzTGi024tznrzEk9PqDzrbF1sJP
	+NVUMEutabSLrPjDr+vwKM6Xg5l9JbHVfW9kLGJ/EaPIpYwES/CO4LEbwllos5OMRHLo
	ZAwav2TsNBOSR57LdwFwyvRd4nKkanvlQ5e7wTqkEFoWOkEOOhM3GXA1suFARb4mw4LJ
	yku6i4x4r/tG6L4ttpl2XWlLM9bif/n9QT+EV9dEW4CJ02bKX2IFbujpxCpIqWyWcQWp
	b7FQ==
X-Received: by 10.50.114.100 with SMTP id jf4mr1380716igb.94.1442019068909;
	Fri, 11 Sep 2015 17:51:08 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	ql6sm786115igc.15.2015.09.11.17.51.07
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Sep 2015 17:51:08 -0700 (PDT)
To: Edward Vidal <develone@sbcglobal.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2145163550.1408159.1442011814253.JavaMail.yahoo@mail.yahoo.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55F376F8.20107@gmail.com>
Date: Fri, 11 Sep 2015 20:51:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <2145163550.1408159.1442011814253.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: [meta-raspberrypi] rootfs fails
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
X-List-Received-Date: Sat, 12 Sep 2015 00:51:13 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Ah good, someone else is seeing the problems I've been seeing :-)

In my case it has nothing to do with anything that I'm adding to my
image, it just happens (apparently) randomly. Try building again, it
might succeed this time. In my case I'm just building plain old
"core-image-minimal" with nothing else added. When it fails for me I
just restart the build and it succeeds. Sometimes it fails a couple
time, but eventually you'll hit the right phase of the moon and it'll
work ;-) haha



On 09/11/15 18:50, Edward Vidal wrote:
> meta-yocto-bsp    = "fido:d4585fa23d56a58c583ee33db067a23177a936b1"
> meta-raspberrypi  = "fido:17dad9328b100beda1cf870c9075e509b5cbfa90"
> meta-oe          
> meta-multimedia  
> meta-python      
> meta-gnome        = "fido:d4585fa23d56a58c583ee33db067a23177a936b1"
> meta-browser      = "fido:ca96f4326345dcd779fc539877a04f069f431749"

fido, eh? Strange. I'm seeing this on master. I'm also seeing it with
meta-sunxi. In other words I'm seeing it with any layer/machine that
tries to build an sdimg.

> ERROR: Error: The image creation script
> '/home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-sato/1.0-r0/temp/create_image.rpi-sdimg'
> returned 2:
> expr: non-integer argument
> WARNING: exit code 2 from a shell command.

I guess fido isn't smart enough to print the exact expr problem that is
causing the error. Maybe the log file has it?

