Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DE9E002A5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:57:57 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 18 Jul 2012 06:57:56 -0700
Received: by qcmv28 with SMTP id v28so852183qcm.25
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:57:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=oBkg+071DhlPbMSTwYQyIhsOpN6M2xhx8p0E72pUJxg=;
	b=JYOb6cRvSqoXciKTGUx2mcI4VpTFPretCtFpw2l4cYiYSROFsCfpsDuIzbbSHMxCV8
	NaarsSFMRoIrvtLqveIkydK70OJokTVZPwj83xcFPW6qFzNlQARvba6ATq9WfBg9qoL/
	W3GY85+XyD3EJI55e38qxScdNs1JghSgupFFLNb4MlhIiGQKsE3BRjMGyOWZkkvcVoig
	2XMCmPR3MyQfwhv13a5z7iDXpvqpLjUm7FsLDVh8OLZpga1EDvx44ew14rUp96iZqAAN
	wm1pPqB0B8ft/xiiqBvwo8KTHVxGny+JEDyTY2zNSuPQc+Q54fXowfEiYpcq4pr9y/Dl
	Vivg==
Received: by 10.224.177.1 with SMTP id bg1mr5997610qab.68.1342619875606; Wed,
	18 Jul 2012 06:57:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.82.74 with HTTP; Wed, 18 Jul 2012 06:57:35 -0700 (PDT)
In-Reply-To: <CABcZANkbW0vppe82d6mMnsh-rDZSNq_SCLPrKyA_h+N-Z4T=1w@mail.gmail.com>
References: <5006A190.6090508@freenet.de> <5006A6F6.3040208@freenet.de>
	<CAJTo0LbGL6hakXLgVf8SuK6A-VxgnJM7JtRJObd4_amdongwWA@mail.gmail.com>
	<CAJTo0LbKTyVPKjSxSYBqMj5u574O9YQoKwxgwysmr+hJsu6Azg@mail.gmail.com>
	<CABcZANkbW0vppe82d6mMnsh-rDZSNq_SCLPrKyA_h+N-Z4T=1w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jul 2012 14:57:35 +0100
Message-ID: <CAJTo0LYu-Y6UxFYYsO_pm32PKVAGRstjmLy6SjUo6Uvi+j_1+Q@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQnpPJpVLZp89x27DmWpP6v0Bq1CwxEoc4QwDi6urEOseqKEkv8SMrZ3Y4OXt2gCW7h+QYgT
Cc: yocto@yoctoproject.org
Subject: Re: [Solved] Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Wed, 18 Jul 2012 13:57:57 -0000
Content-Type: text/plain; charset=UTF-8

On 18 July 2012 14:46, Chris Larson <clarson@kergoth.com> wrote:
> On Wed, Jul 18, 2012 at 6:37 AM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 18 July 2012 13:13, Burton, Ross <ross.burton@intel.com> wrote:
>>> I'm working on a patch to display the parsed PATH so you'll see the
>>> trailing empty element in that case.
>>
>> How's this?
>
> It's still slightly hard to spot there. I wonder if something like
> this would be easier for the user?
>
> ERROR: Invalid PATH entry at character N: /usr/bin:/bin:

That would be easier for the user, but harder to implement. :)

Ross

