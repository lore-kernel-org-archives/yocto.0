Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95EBBE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:54:19 -0800 (PST)
Received: by qadz32 with SMTP id z32so2586830qad.14
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:54:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jfabernathy@gmail.com designates
	10.224.117.1 as permitted sender) client-ip=10.224.117.1; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jfabernathy@gmail.com
	designates 10.224.117.1 as permitted sender)
	smtp.mail=jfabernathy@gmail.com;
	dkim=pass header.i=jfabernathy@gmail.com
Received: from mr.google.com ([10.224.117.1])
	by 10.224.117.1 with SMTP id o1mr8420645qaq.4.1327960459135 (num_hops =
	1); Mon, 30 Jan 2012 13:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=bXPKNmdzvDlfbEipSDL3X52kp2J2oXCIFoOVHJ9VE8A=;
	b=fkgaV861hbhlVrZo48wa6mvDQzQkZYszrsFtIDnDmXwlHHiX5SUlYPEAP1/uiKj56F
	lxiaUtATuTi184VndI/TM3p2C+06AcQPGWAWYmGwbSlkhi3j72v6i4eGuAL9Z9dYTUAD
	iga9nuMJ/Yz/d/EO4I0bASBfLCpFPD92u89M4=
Received: by 10.224.117.1 with SMTP id o1mr7227505qaq.4.1327960459066;
	Mon, 30 Jan 2012 13:54:19 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	dm7sm37179117qab.5.2012.01.30.13.54.17 (version=SSLv3 cipher=OTHER);
	Mon, 30 Jan 2012 13:54:18 -0800 (PST)
Message-ID: <4F27118F.2060302@gmail.com>
Date: Mon, 30 Jan 2012 16:54:23 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <4F270FF5.6040909@gmail.com>
	<CADkTA4O03RT7eSmeK+8QypxnyZzP=+izogzq6c2ywY=80oZd9Q@mail.gmail.com>
In-Reply-To: <CADkTA4O03RT7eSmeK+8QypxnyZzP=+izogzq6c2ywY=80oZd9Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: So what happened to Edison??
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
X-List-Received-Date: Mon, 30 Jan 2012 21:54:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2012 04:51 PM, Bruce Ashfield wrote:
> On Mon, Jan 30, 2012 at 4:47 PM, jfabernathy<jfabernathy@gmail.com>  wrote:
>> It seems that something happened today. I could not complete a build on
>> edison branch for meta-cedartrail.  I copied it to meta-mycdv, but other
>> than that same, old same old. I tried the  standard unchanged SRCREV and
>> also tried the latest.
> I changed the main yocto 1.2 3.0 kernel repository to 3.0, and pushed
> some other kernel
> changes. But if you are purely on edison, and aren't using meta-kernel-dev there
> shouldn't have been any fallout from those changes. (I built 3.0
> several times today
> myself).
>
> Perhaps Josh knows if anything was pushed to edison ?
>
> Cheers,
>
> Bruce

I'm retesting on the tarballs again. If successful I'll try git version 
of edison.  I started today with complete new clone of poky and meta-intel.


>> Error below:
>>
>> ERROR: Function 'do_validate_branches' failed (see
>> /build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3/temp/log.do_validate_branches.26787
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3/temp/log.do_validate_branches.26787
>> Log data follows:
>> | ERROR: Function 'do_validate_branches' failed (see
>> /build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3/temp/log.do_validate_branches.26787
>> for further information)
>> NOTE: package
>> linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3:
>> task do_validate_branches: Failed
>> ERROR: Task 720
>> (/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
>> do_validate_branches) failed with exit code '1'
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


