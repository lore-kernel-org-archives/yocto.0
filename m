Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84CAFE00A26; Tue,  2 Jun 2015 19:35:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6687CE009EC
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 19:35:09 -0700 (PDT)
Received: by igbsb11 with SMTP id sb11so4152114igb.0
	for <yocto@yoctoproject.org>; Tue, 02 Jun 2015 19:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kg5jDokkILX0hqhPQg1E77oI1VZde0gelbl6zrVdiug=;
	b=HMXwSHzSFLCrTk1eRyyKAnfwDC9LeBltjLukLIIM6OvWZcgvTuyT2xtPaaz1xygQmt
	IiGpkdaMSP16TpuF74pv/8XXVftstjggqFH/fq3NI+Foc5j85dImtyMb9aLy1vz1VmXR
	cplcGC/u3oEiJS589BsgahTpTF5qLCa4R+CvfG9YVAiemDc28C50NYl6GvQEdFQW9QKM
	6FVOiYLWA1auDFfIGeatpcj98pLvgxoOmfnxitUyJng9Xi+r+1pr9E/AlYOrM8N3pQeX
	kMSoOmkqf6nvtqm9ZN4m+2Zn6ELMlAPW2AvVsLnDpG4cJnJkRiA/9yJR9ixkUQF9ggh5
	8MsQ==
MIME-Version: 1.0
X-Received: by 10.50.43.196 with SMTP id y4mr23979223igl.14.1433298909061;
	Tue, 02 Jun 2015 19:35:09 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 2 Jun 2015 19:35:08 -0700 (PDT)
In-Reply-To: <CAJTo0LZEu+ahS_CrNtTepbURZdriQGHgUD=9Dmee6o6qpw5i5Q@mail.gmail.com>
References: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
	<CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
	<CAK5mtexC81Yi9C2YA6O4SuKZ=vQ6wk8=cUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
	<CAJTo0LZqH+u5fNKF_vVVuyw7kaXRMdLteNai1UCPz2-UEpbXxw@mail.gmail.com>
	<CAK5mtew29B5e88HjkmjbNhc4U7G8vnTOi6pPqBn4xELTt_MOFg@mail.gmail.com>
	<CAJTo0LZEu+ahS_CrNtTepbURZdriQGHgUD=9Dmee6o6qpw5i5Q@mail.gmail.com>
Date: Tue, 2 Jun 2015 21:35:08 -0500
Message-ID: <CAK5mtexBgnSKgXcbCBJdziYVVKcxsbtQU5w8vXKYOrEJ2DRi7w@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build hello_world.c in yocto
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
X-List-Received-Date: Wed, 03 Jun 2015 02:35:13 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 2, 2015 at 11:33 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 2 June 2015 at 17:30, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>>
>> However I realize that it also includes many other stuffs ( pango for
>> example )
>>
>> Is there any way to make it with less features ?
>
>
> Try installing packagegroup-core-buildessential (that's a package, not an
> image feature).
>
> Ross

You were more than right .. I really need the sdk for now that I am
doing experiments . Although in the future create a  packagegroup for
mpi is not bad idea

Right now I am able to run this benchmark:
http://icl.cs.utk.edu/viewcvs/viewcvs.cgi/LLCbench/llcbench/doc/mpbench/mpbench.README?view=markup&content-type=text%2Fvnd.viewcvs-markup&revision=HEAD

Thanks for all the help

Regards

Victor Rodriguez

