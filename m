Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA78E00A8C; Sun,  9 Aug 2015 16:43:02 -0700 (PDT)
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
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92968E006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:43:00 -0700 (PDT)
Received: by iodd187 with SMTP id d187so154660643iod.2
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=IUBnEgLxJ+CHhaiGLAv8euzMiINk8bhm5f7HEKI7zP8=;
	b=SixKQfSlLx06WfsKzKoWD6OH1IUhz7tlRHtE/PZ+GWXW0rp0CG0BGY7MlKWGG6wj0S
	c/iSERDqC3yUf/eGn13L7TjMYm7/E/UxQt3Qa/kS/ob8p2UPcDCATjv/mu+50UrMSdxx
	P46juqaG93mwu+rE8xidkTLv5RADE/vGkqax+6nAnX0Xz/8FGQN0alaj2scCzCnE2mor
	VBnISHTz9ipXKX7Uh8DZPjzj0RbBn/mC+vNPrUP/XRC+wrfAC85uu1KJWaWjMZSysjFK
	hlV+LzkP+bj3Ga6xWRE212HOB6RQ2teSlTkV8XVCezY9mGLUDpKpOL51oOb/musANgWr
	E1bg==
X-Received: by 10.107.38.68 with SMTP id m65mr17384590iom.135.1439163780385;
	Sun, 09 Aug 2015 16:43:00 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	lp3sm4690127igb.12.2015.08.09.16.42.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 16:42:59 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55C277BF.5020309@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55C7E57E.7010502@gmail.com>
Date: Sun, 9 Aug 2015 19:42:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55C277BF.5020309@gmail.com>
Subject: [meta-darwin] Re: building an SDK for MacOSX
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
X-List-Received-Date: Sun, 09 Aug 2015 23:43:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Richard (and everyone),

Any thoughts on this, is my understanding correct? It would be
fantastically great if I could generate MacOSX-hosted OE SDKs built on
my Linux machine to target embedded ARM boards... it would *really* help
"sell" OE to the people at work :-D

On 08/05/15 16:53, Trevor Woerner wrote:
> I came across RP's meta-darwin today that I'm hoping will enable me to
> build an OpenEmbedded SDK that can be used by my colleagues who work in
> a MacOSX environment?
> 
> Is my understanding correct?
> 
> Has anyone tried this lately? The last commit was from almost exactly a
> year ago.

Has anyone used this recently?

> 
> The description in the README is a bit vague. I've never used a MacOSX
> system so I'm not entirely sure of the filesystem layout. What exactly
> is needed to create the OSX-sdk.zip file?
> 	/usr/include
> 	/usr/lib
> 	/lib

A coworker had a look at his machine and provided me with the following
information:

	/usr/lib: 87MB
	/lib : Not available
	/usr/include: Not availabe
	/usr/local/lib: 20MB
	/usr/local/include: 2.2MB

Does that sound right? Is the above what I need a zip of to use this layer?

Best regards,
	Trevor

