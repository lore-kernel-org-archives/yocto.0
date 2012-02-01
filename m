Return-Path: <bewithsathish@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4886CE00303
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 03:04:54 -0800 (PST)
Received: by pbcc11 with SMTP id c11so1244196pbc.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 03:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=rfHq+N6rCFzJbwEN2NjA3P/X+sePQiTJ++yQoFzGFAI=;
	b=T6c2VGFy9b5qqRBInblJIwLMNcuJucmXEopac1XWhvCmmWsqrg3EBpErXCzpGo3HJn
	R2QAB8M4M2ubdyfX5ZA87kmbDfLkymTG8wvGd5Sm9dtFpLQ6+qN9YES+feSlChYYMMIr
	jd4HUnBNWxupRnrDu48uK1lcTI2HFZV3q7hLY=
MIME-Version: 1.0
Received: by 10.68.195.73 with SMTP id ic9mr59272927pbc.72.1328094293653; Wed,
	01 Feb 2012 03:04:53 -0800 (PST)
Received: by 10.68.232.5 with HTTP; Wed, 1 Feb 2012 03:04:53 -0800 (PST)
In-Reply-To: <1327993829.2696.18.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
Date: Wed, 1 Feb 2012 16:34:53 +0530
Message-ID: <CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: forcing a task to run while building an image
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
X-List-Received-Date: Wed, 01 Feb 2012 11:04:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 31, 2012 at 12:40 PM, Joshua Immanuel <josh@hipro.co.in> wrote:
> Hello all,
> =A0 =A0 =A0 =A0How do I force a particular task to run every time while b=
uilding an
> image?

You may have look at this
http://docs.openembedded.org/usermanual/usermanual.html#usage_workwithsingl=
erecipe.

I think, image are build from the packages that are build from the
recipe. And there is no way for the bitbake to detect that source is
changed like the makefile.

But there is always another way to do things we need. Here is my tip,
you can do to this.( need comments on this).

add a task in your recipe, like,

do_mytask() {
    #add commands to clean and do your stuff.
    #you can also pull from version control.
    #ordinary shell commands , need not to master anythings.

}

addtask do_mytask before do_build

add this to one of your recipe to build the image, now use bitbake -b
<your recipe> -c <do_mytask()>



--=20
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

