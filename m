Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFBBEE011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 10:38:03 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id c4so148039qae.14
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 10:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=gsJE4yswrf0WJ+wGIOlOJDQrWEas0X6LdVneG2KKqjU=;
	b=cm4x12U+8h8+t/zIprD28ZY/kxlwKMPUFABs5H49ix5vJ/C3cOt1Z6RrmKsfC2msH+
	QljQtVNcn1NTPPrsbqMfiOdNF3//FYeeUXsQXQRVrhO+NpG3Qu2wqWutzYE6ebd/1Vtd
	5ja5i32dqa2jZbKBKS5tADpYLyE3cn0m8PI76O3kO+AAR7+KIE43Xu6wSSZNZ22cdJzD
	hJeK5LSUsMS21Aafrhnb0KXR5ewryRByKj53T3g0F5xndIsLSgDSSnNWnJxKfr6ysSu7
	1MSWnPTNFIj1hZbI9NcoZyjySu/2/YUlNWcOhx+F6g7K+lwfiAez5OUr+3XKrPRpY9n0
	QXAA==
Received: by 10.49.133.97 with SMTP id pb1mr37322947qeb.31.1350409081133;
	Tue, 16 Oct 2012 10:38:01 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id g4sm18952433qav.16.2012.10.16.10.37.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 16 Oct 2012 10:38:00 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 16 Oct 2012 13:37:58 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
	<1643755.JoZOaIgQYA@helios>
Date: Tue, 16 Oct 2012 13:37:58 -0400
In-Reply-To: <1643755.JoZOaIgQYA@helios> (Paul Eggleton's message of "Tue, 16
	Oct 2012 17:06:35 +0100")
Message-ID: <87vceal3m1.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: lm-sensors not available as a package?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Oct 2012 17:38:04 -0000
Content-Type: text/plain

Paul Eggleton <paul.eggleton@linux.intel.com> writes:

> On Tuesday 16 October 2012 16:00:01 Jonathan Haws wrote:
>> I would be surprised if a recipe for lm-sensors has not already been
>> created, however I cannot find one.  Can someone point me in the right
>> direction?
>> 
>> All I can find is a sysstat package that I can include via
>> IMAGE_INSTALL_append, however I cannot see how I can get the same
>> information out of it that lm-sensors gives me.
>> 
>> Has anyone got lm-sensors included in their image?  If so, can you share the
>> recipe?
>
> Unless anyone else pipes up, my local index suggests that this is something 
> that hasn't yet been brought up-to-date from OE-Classic.
>
> http://git.openembedded.org/openembedded/tree/recipes/lm_sensors
>
> Assuming nothing else is available you should be able to use this as a base. 
> There is a brief guide on the main things that need to be changed when 
> updating a recipe from OE-Classic here:
>
> http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core
>
> If you do come up with an updated recipe we'd love to have it added to meta-oe 
> or some other layer ;)
>
I have a lmsensors recipe somewhere around here. I'll dust it off and
post it to the oe-core mailing list.

Marc

