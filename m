Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 689CBE01358
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 14:45:39 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id hz10so5594054pad.2
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 14:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=srByZ7Y8UDQGLALpjWAW2peZUtZyhENj6S7On0ogdaY=;
	b=FyXXQ3py8XpRW9FXrd4YXXweM61EFDhs5ECvrhejF2y2OJYG8kjLHNFEsFrjhJbLW9
	rzBAC/a0Ad5D1F8rNxcJPv8ehB+0bPju9ym1zbnD4glRrRtyXf/5OAjbrXfijz69GIKU
	MwX8ODX3QyZAIHXc6LyRvzW0OlDmwhiU6yFtQJF7b/c9QtpNmdIgfhF2X/7HCrh39/+L
	DaAKBJCksI4s64InmXBMMJHs+v+uJripm/w5hOkD3yWhwKMBpSpO6oVYWYJ6ZXCJqK+D
	TbfYLmDfUmclBMPdIcbq93zQiJ2MhBekdGxbrS4iCIgl+e8bwvZQm8hFH5cAs6I22WzI
	88Kw==
X-Received: by 10.67.21.226 with SMTP id hn2mr28711107pad.69.1378158339400;
	Mon, 02 Sep 2013 14:45:39 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225])
	by mx.google.com with ESMTPSA id yo2sm19374981pab.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 14:45:38 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <522506F8.8060706@gna.org>
Date: Tue, 03 Sep 2013 09:45:28 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
In-Reply-To: <CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Mon, 02 Sep 2013 21:45:40 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 03/09/13 00:35, Burton, Ross wrote:

Hi Ross,

> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> wrote:
>> So right now, I'm thinking about:
>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 threads)
>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can speed up the
>> builds)

RAID-5 seems to be what i am after.

>> - RAM: i don't really know, maybe 8 or 16 GB or more?
>
> At least 16GB of RAM for the vast amount of disk cache that will give
> you.  32GB or more will mean you can easily put the TMPDIR or WORKDIR
> into a tmpfs (there's been discussion about this a few weeks ago).

Yes, I remember that one now, well spotted!

> I've 16GB of RAM and a 8GB tmpfs with rm_work was sufficient for
> WORKDIR which gave a 10% speedup (and massive reduction on disk wear).

I'm a bit surprise to see only a 10% speedup.

>   Others have machines with 64GB RAM and use it for all of TMPDIR, at
> which point you'll be almost entirely CPU-bound.

OK, so 16GB sounds like a minimum, 32GB or 64GB being even better, at 
that size, this is not that cheap...

Thanks,

Chris

>
> Ross
>


