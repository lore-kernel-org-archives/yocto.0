Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8297EE004AB
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 01:24:40 -0700 (PDT)
Received: from localhost ([127.0.0.1]:46691 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7MWo-0006c2-4e
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 08:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:content-type
	:content-transfer-encoding; s=default; bh=TiczyqvxZZ7SQMpW4sLkjK
	hrsPc=; b=Se8jauq6dAH5MEUlSDce2HJTJi2XIv/uAPYV5yVnv91QOTBeVn/8+o
	2Ej8LfS521Foy54q/9nYkpa2g51fVIqeeYE9Eh8gxM/cYwCAZOaeAztuaw5G4uOb
	qWpNK+Ca/zJzatMEWo8yBNcRyWUVVcK9aUOlrXy6B0fpWqPCl/Hnk=
Received: from [195.171.99.130] (port=31185 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7MWo-0006by-2S
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 08:24:34 +0000
Message-ID: <5040751B.2070900@communistcode.co.uk>
Date: Fri, 31 Aug 2012 09:26:03 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-raspberry pi libav bbappend
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
X-List-Received-Date: Fri, 31 Aug 2012 08:24:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm attempting to build for the Raspberry Pi again today and I have hit 
a problem with libav. I have it BBMASK'ed in my local.conf however it 
seems the recipe still gets sanity checked and can't find the recipe to 
go with the bbappend so it fails.

What is the best way to get around this?

EDIT: I just checked the readme again and it seems as though meta-oe is 
now required, is this the only hurdle in having a non meta-oe build or 
has there been other additions recently?

Regards,
Jack.

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


