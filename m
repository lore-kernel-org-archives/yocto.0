Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC7FE0092D; Thu, 22 Jan 2015 23:40:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 315D3E00782
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 23:40:07 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id rd18so5826720iec.7
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 23:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=kErhBrzSgat40koK/r8XoSo3z5qTip7a1IOibjxyLOc=;
	b=L+b1TDYfVYaY99Jk3Z6HeraJTc2N4L56WBJlbpYHM/O/qBCY8NVPitwXLsBx6MzIlk
	qrnZon3KW7Xno1wVaXnAX6Y4V4sSTtrrULxerrxeb6usaZ6OSJA2dWSCywzrIAuHo/VL
	MEy7NCOwNZ2o8aiX4EnTBf5p6DHPTHOjlIn3zrVCKxme0HmT33+KZdy47e7c7ot1Ku7W
	9hmM2uzYqCuicfIWYaEb09sXJs6bojqgpo4C/xHsDwjzM959uClvA5lCrUkndX6FEQCL
	SZyqIn02p2TK9YXPZJOzKYl41yCGuCeFB6ZcQSpn9w0QfGeP5urAP+1UcSJ7wuaCSRhT
	WzQQ==
X-Received: by 10.50.108.68 with SMTP id hi4mr425880igb.38.1421998807066;
	Thu, 22 Jan 2015 23:40:07 -0800 (PST)
Received: from [192.168.141.85] ([66.49.180.141])
	by mx.google.com with ESMTPSA id 185sm475323iof.43.2015.01.22.23.40.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Jan 2015 23:40:06 -0800 (PST)
Message-ID: <54C1FAD1.1080903@gmail.com>
Date: Fri, 23 Jan 2015 02:40:01 -0500
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?windows-1252?Q?=22H=E4nel-Baas=2C_Alexander=22?=
	<alexander.haenel-baas@sieb-meyer.de>, Jegan Chandru <pcjegan@gmail.com>
References: <9BA84827B30CBE4996725F98F7DC9123428FB241@SMExchange01.siebmeyer.org>	<CY1PR0301MB11947FC2B060F6E507B3539793360@CY1PR0301MB1194.namprd03.prod.outlook.com>	<9BA84827B30CBE4996725F98F7DC9123428FB401@SMExchange01.siebmeyer.org>	<CAAA4K6LtR+G7G5sbByg+ZKE3+e_Kb2T-HBOdkAOrMp5t24PzPA@mail.gmail.com>
	<9BA84827B30CBE4996725F98F7DC9123428FB42C@SMExchange01.siebmeyer.org>
In-Reply-To: <9BA84827B30CBE4996725F98F7DC9123428FB42C@SMExchange01.siebmeyer.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"ting.liu@freescale.com" <ting.liu@freescale.com>
Subject: Re: mount.nfs -> how i include nfs-utils
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
X-List-Received-Date: Fri, 23 Jan 2015 07:40:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 01/23/15 02:14, Hänel-Baas, Alexander wrote:
> I have added the line IMAGE_INSTALL_append=”nfs-utils” in the
> local.conf file and now nfs work on the target.

If the above line is working, that would be a lucky coincidence! :-)

Using the _append operator one needs to include the space when adding
their string:

    IMAGE_INSTALL_append = " nfs-utils"

In your case I'm guessing there already was a space at the end of the
existing object, otherwise the code building your image would not have
been able to separate "nfs-utils" from whatever proceeded it, and
therefore would not have been able to add that package to your image.

