Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45733E00873; Tue, 13 Jan 2015 07:23:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A690E00823
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 07:22:48 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id r10so4267861igi.0
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 07:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=MIILtcDB5EPXOX+ROHfeC4DnoFdeiqgBAWnReE5ntQs=;
	b=Kbpx7J89tQb4BrJhUP79CWVU1owpQLHY3Kr4koqaBsbC0kWzjyw2k6oD5aw/T4vXTd
	jbDZL8e5kV4wpMnWwe+tWMLf+OoqDswoNjFrdgrMj89gHo5ZeyES9Pl9TgmciRmXmglq
	29+2siQ2z6EqIL2TrX9EQBHktJ6IenzZdAE6+VKnJ3gAmyZPiSe6rU+wdpWNerzMp4ly
	IcRcVzJHSzFcgbxljgUPkVcb70r6yoMhrQdDELYCZE+XHIrwEjKgKhJRCz2LgryJxDFk
	WiLNBEYETacHHbjF8WNfom/eZK7H0G3P0xGsg1036rZjlgCyFXlw2EuAuAEwdLlojmng
	olaw==
X-Received: by 10.50.67.18 with SMTP id j18mr13232006igt.26.1421162568311;
	Tue, 13 Jan 2015 07:22:48 -0800 (PST)
Received: from [192.168.141.85] ([66.49.166.169])
	by mx.google.com with ESMTPSA id
	j193sm8402485ioj.37.2015.01.13.07.22.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jan 2015 07:22:47 -0800 (PST)
Message-ID: <54B53844.4080605@gmail.com>
Date: Tue, 13 Jan 2015 10:22:44 -0500
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
	<54B53112.6050302@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E938C9@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E938C9@ORSMSX101.amr.corp.intel.com>
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 15:23:03 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/13/15 09:57, Rifenbark, Scott M wrote:
> Are you generating those on your own or are you using the "pdf:" target from the Makefile that is currently part of the repo?

I'm using the pdf target from the Makefile:

    $ make pdf DOC=dev-manual

usually by running:

   
https://github.com/twoerner/meta-trevor/blob/master/misc/build_yocto_docs.sh

