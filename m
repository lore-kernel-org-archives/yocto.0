Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79131E00D22; Sun, 28 Feb 2016 19:31:42 -0800 (PST)
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
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22338E00D0B
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 19:31:40 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id z135so174764898iof.0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 19:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=k5HPMuPh+oriJfwu4GVJ48BHWssXddYN3p/Gxv63a0U=;
	b=sqw6NBuOqYQK0Hcyv+1IQmoBz30lrq5tTD830z0k1jtQazSlVsls9nBPgY3Ol8RXaf
	kE8Us3uHWLFuDV2NTk/4Qz7XfxEqjRAsewDYDQ8RSSU3EiM8ovUim3W2BcpDOG/qF1/h
	r1rXPUwkk/VYfOSFPPxDEtyFCOOU0zgCmpvLWG0EGHQRRJlt6oNPP1OCQ8EC8ukCKXwD
	GYyYFbfZdt0PsjvmIwcMUzBGWLGcwNm47GAau/jzlT90n7o7zu5CBeCFnXBmcif6odqp
	Jo2jlwPFYh+u3pnsxtDHwEV5fHo9+T4zU3iGg01iM/4+yfOXtiw+E6qRlwBYI6RqRyCb
	8OiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=k5HPMuPh+oriJfwu4GVJ48BHWssXddYN3p/Gxv63a0U=;
	b=kXa70crmp15vCdYpVQ5lHjMENNKqYquI+LpJWMvphP+NozRUOY3MZ97aORF45gR3Ht
	RVH/ITkPJ4UssvHAQRXrd+5vZg0CBsh370CWDVjz8+3rFU/DBQckNPu+ftLJM63lZ8Zw
	Ickv7SoO3JrtLsTHEP49FJG29KmCldJlulmC7TsltLwvebg3EX3nt/rhhur65AjQw4UV
	qPHdS/aY7BiLES1gEcevmsHWbPV+DXHOOLmCJhJkiatpbwxyzpsqmlKBsR52YQ6UVyB2
	dO/U6xwoG7JgEb56oYzovS3ux094VhlLHgxJrJHLJ6gTSGo1pwZ+la1vWLH1HRQ+X2nU
	lwnA==
X-Gm-Message-State: AG10YOSCiBPwfpEyBrWI4kxEv0oQ3G9ZmjhPubpGbXQhf7MYKn+jZ0t7s0C5xHcut0bVrA==
X-Received: by 10.107.149.18 with SMTP id x18mr20455600iod.170.1456716700256; 
	Sun, 28 Feb 2016 19:31:40 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	wi7sm1373225igb.1.2016.02.28.19.31.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 28 Feb 2016 19:31:39 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3327973.x6IgOsuVxr@peggleto-mobl.ger.corp.intel.com>
	<AAAE6561-746E-498D-A499-C5A0E2668D9C@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56D3BB9C.8090105@gmail.com>
Date: Sun, 28 Feb 2016 22:31:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <AAAE6561-746E-498D-A499-C5A0E2668D9C@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Brian Avery <brian.avery@intel.com>,
	openembedded-architecture@lists.openembedded.org
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 03:31:42 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 02/28/16 20:46, Khem Raj wrote:
>> On Feb 28, 2016, at 4:17 PM, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>>
>> (changing subject line so people don't miss this slight tangent)
>>
>> I'd almost completely forgotten, but the part of what we wrote for Hob to
>> write images to a USB stick or SD card (bitbake/bin/image-writer) is actually
>> a standalone application. There's not a lot to it - pick your image file and
>> then the device you want to write it to; it has some logic in it to not let
>> you accidentally write to devices that aren't USB sticks.
>>
>> A few points:
>>
>> - I'm not sure very many people know this tool exists, so it's likely it's not
>> being widely used. Having said that it is a nice simple UI that does the job.
>>
>> - It shares some code with Hob, but mostly not the bits with code quality
>> issues, though it is still GTK+ 2 based.
>>
>> - It doesn't support the advanced SD card writing functionality that has been
>> implented within wic over the last few releases, which is pretty important for
>> devices where a special partition layout is expected by the bootloader.
>>
>> - Toaster can't really have this functionality in it because it's web based
>> and the web server might not be running locally, so writing to a local USB
>> stick or SD card isn't going to be practical from there; about all it could do
>> is provide instructions on how to write the image once you've downloaded it.
>>
>> - I believe there are other equivalent tools out there that various distros
>> use for taking a downloadable ISO image and writing it to a USB stick. I
>> haven't done a survey to find out if if any of them work in quite the same way;
>> I know some of them actually unpack the image and then re-create a filesystem
>> on the device, which isn't the right thing for our images.
>>
>> - We do have a command-line equivalent in the form of scripts/contrib/ddimage
>> in OE-Core. Of course it's command-line and thus less friendly but it does the
>> job (and also has some safeguards against writing to the wrong device).
>>
>> So what do we do with this? We have two choices really:
>>
>> A) Drop bitbake/bin/imagewriter along with Hob; we could potentially
>> resurrect it again later if desired
>>
>> B) Preserve it along with the shared modules that it requires
>>
>> Thoughts?
>
> Option A. There are USB writer tool in your favorite distros and OSes, and I have
> seen people use those tools more often.

Some platforms, e.g. Minnow, use their own image writing script (i.e. 
mkefidisk.sh). If there are other platforms which need some special tool 
that isn't generically available from the host and the hob tool could be 
made to accommodate them all, I'd prefer to see one tool that can do all 
of them instead of a bunch of tools, one for each platform.

