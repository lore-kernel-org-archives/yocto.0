Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C193AE008CA; Mon, 10 Nov 2014 18:43:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E90E007C0
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 18:43:26 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id x19so10651548ier.19
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 18:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TsbHY+sSVtG2yO5e0Hbw77G6lT/RGpr/1EKbI0Jl8/E=;
	b=CHefbTV8IKfV+b8Bk57E9LGG0M7zr1EBoEP3DLp979UBk5aNxQe+ZifvR2W2CwjJz+
	PsPVUQMF00ml/eqgj5ioHz/BPJtNEVB23rg+Ih0/JRwRgPr5KlxCMHbgsu2bgebySsMY
	WKy48cMmmgrhV9IcOIQl/9SGK/8FpZCjdiqlvG/zkgcW5b42if7oqUt0aBIn0VCwez7a
	3pCssQEDKeFcDbRLrM+HWoB9+XkDaQdBZAzy42PN3Nwr6Wku0huMmZMp8fkZQ+3VVpff
	VK+k1JsQ9pf7qGcsmUAKCtTVxa5YpLVxBSYNZ+sekMoJF4m+qmq2dq3ZFc9TxirFaw9e
	s+aQ==
X-Received: by 10.42.206.144 with SMTP id fu16mr592985icb.79.1415673806036;
	Mon, 10 Nov 2014 18:43:26 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id m63sm9175326ioe.40.2014.11.10.18.43.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Nov 2014 18:43:25 -0800 (PST)
Message-ID: <546177CC.7010008@gmail.com>
Date: Mon, 10 Nov 2014 21:43:24 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: John Unland <opensourcejohn2112@gmail.com>, yocto@yoctoproject.org
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
In-Reply-To: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Tue, 11 Nov 2014 02:43:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

John,
Hob is not meant to be like Suse Studios. Further more you are right about the interface sucking 
hard for certain things, I would recommend you start cleaning that up first and then afterwards 
move on to other areas of interest with YP.
Cheers Nick 

On 14-11-10 06:58 PM, John Unland wrote:
> Hello everyone,
> 
> I am new to the embedded space, been working with embedded for a
> couple of months now as well as Linux itself. After much time spent
> with Hob I have to say it's a awesome tool to use. However I would
> like it to be better than it already is, I see the potential of this
> interface to help newbies like myself, weather it be hobbyist or
> industrial use. So below is what I have found through my fiddling
> around with Hob.
> 
> 
> -Some interface inconsistencies when your selecting layers, image
> type, distro type etc.
> 
> -Image deployments (Only .hddimg and .iso can be deployed to physical
> media at the end (To my knowledge) of the build process. There's is a
> lot of FS types, but I would really like to have a steps on how to
> install these other FS types which documentation nor simply goggling
> it helps)
> 
> -Branding. There are ways to go and edit files to specify how to
> rebrand and stuff but that requires a command line. I would like to
> have the simple screen where I can add branding (Boot screens, Logos,
> and distro names etc.). I could definitely if Hob does have a Web User
> interface where I can't access a command line to change parameters of
> the finished product.
> 
> -Documentation is awesome, however from a person that has only a year
> and a half experience using Linux it's kinda hard reading it
> sometimes. (Not really anything bad on Yocto's part. I would just like
> to input something that newbies can be represented in this project)
> 
> I really could see Hob become a open source version of openSUSE Studio
> (Which it's closed source) but for embedded devices. So that's just my
> hopes for Hob / Yocto could become...
> 
> Lastly, I would really love to help with development as well. I
> haven't really gotten into programming that much but I have worked
> with the Fedora Server Special Interest Group doing QA for Alpha and
> Beta release. So if anyone can put me in the right direction I can
> certainly help YP out.
> 
> Thank you.
> 

