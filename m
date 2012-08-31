Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B333E004AB
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 01:30:52 -0700 (PDT)
Received: from localhost ([127.0.0.1]:50598 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7Mct-0006p9-G4
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 08:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=6CkZH+/CNzw13mbj32UCmaHD/AI=; b=FBXlWggBHBfrh5j51WinYmO2cxu9
	WIcxWA5qvSMrMYGkma1xwTaPWvo2sXzbYXpf+x7InIZzrHT11wyooKMIqIujmwf2
	Kpi4+6LIg1l9fDkqeQOZAIXAUtK7XmB6oixHqiuazAlqUEaymrjAaAcsjo9bLboK
	ItPi+zAN+l+x9Mo=
Received: from [195.171.99.130] (port=14523 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7Mct-0006p5-Dc
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 08:30:51 +0000
Message-ID: <50407695.80807@communistcode.co.uk>
Date: Fri, 31 Aug 2012 09:32:21 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5040751B.2070900@communistcode.co.uk>
In-Reply-To: <5040751B.2070900@communistcode.co.uk>
Subject: Re: meta-raspberry pi libav bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 08:30:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/08/12 09:26, Jack Mitchell wrote:
> I'm attempting to build for the Raspberry Pi again today and I have 
> hit a problem with libav. I have it BBMASK'ed in my local.conf however 
> it seems the recipe still gets sanity checked and can't find the 
> recipe to go with the bbappend so it fails.
>
> What is the best way to get around this?
>
> EDIT: I just checked the readme again and it seems as though meta-oe 
> is now required, is this the only hurdle in having a non meta-oe build 
> or has there been other additions recently?
>
> Regards,
> Jack.
>

Just a quick note that I have no problem with using meta-oe, it's a 
curiosity and design question rather than a whinge!

Cheers,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


