Return-Path: <jc@vtkloud.com>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 359CDE01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 00:21:39 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id k14so1335944wgh.13
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 00:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=QBsEiCtAK9cVLvMBAgQdIeGORm8dCmpk8R7I37soznc=;
	b=Wz5n9u6Cyx/TS/8j0Uyq6hflpdsGW0GsSJ3uRW4+Mk2OhypuJ7q/ldN90GOKZ5RIw6
	glVDxLWl/TBdZQdDdFZx+cE0Vb2yTxinWKZzEfoX4J2L8vLdX6LNjSTcvS8ABHyAldbq
	OjCDDMbQ3snvRq28dI2nDkA5fcZMqkjWgncqwvD/ItmxyLdbM0Cp5y3byA4WdhsMPJQI
	3p72D2stRzk2JPk8qm108QJD0vVhalrjFgwqzKbauoQaZn53EGhPp7N0HiaD64TSEbKh
	nWeQGMgtWcl8qfadOZRaOSpsjfMNN/m6PbWY6SpoYnnR8yO8yrLXWGaLK54B2cVmf4Eq
	9moQ==
X-Gm-Message-State: ALoCoQmfTFgq4H5c/vk42LBBI5wwLMEyh578DVKrse8rpHw49iTg0aDDhhB07Y0DzfGFoaU7sL2a
X-Received: by 10.194.80.39 with SMTP id o7mr562624wjx.39.1378365698126;
	Thu, 05 Sep 2013 00:21:38 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id fv10sm9258239wic.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 00:21:37 -0700 (PDT)
Message-ID: <522830FF.6090100@vtkloud.com>
Date: Thu, 05 Sep 2013 09:21:35 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
In-Reply-To: <52276400.6070307@mlbassoc.com>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 07:21:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2013 18:46, Gary Thomas wrote:
> On 2013-09-04 10:40, JC wrote:
>> Hi,
>>
>> I am maintaining a small project based on yocto and would like to 
>> check to what extent I can port it to Raspberry.
>> It seems there's an ongoing rapsberry layer but I couldn't find which 
>> is the right URL to point to in order to get started.
>>
>> Can someone tell me ?
>
>   git://git.yoctoproject.org/meta-raspberrypi
>
Thanks. I checked out everything (including a "fresh" poky) and I get 
this error:
ERROR: Error executing a python function in <code>:# | ETA:  00:00:57
ExpansionError: Failure expanding variable MAJ_VER, expression was 
${@oe.utils.trim_version("2.28.2", 2)} which triggered exception 
AttributeError: 'module' object has no attribute 'trim_version'

my local.conf changes: just added raspberrypi machine
bblayers.conf:
added
   /media/yocto/yocto/openembedded-core/meta \
   /media/yocto/yocto/meta-raspberrypi \


(i had to add meta otherwise it complained it didn't have the mesa recipe)

Any idea? Do you need the complete failure log or is this something known ?

Jay

