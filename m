Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 840A9E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 11:37:14 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1570851lag.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 11:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=VHvIQICwnaqMwQMHqVDTTeEjfM5guhoSK8ou4YlThio=;
	b=IH9C+BKfY2JwKkAXlwTtTMnfoERkuXqkIaaHpyQBI9Ehg5F95OMfmImN6UzbJlLBne
	qS7dkE6sEEdXIpInOUbod1+uo/FezLVTN+Es3p5cDZrvqHjWy9oPe5/F21bKerCEvNy4
	zCjwdqkrDoFOcojgXFFhyL1DLUfbkL3f8RQn8i68y35YaNUuSqDknIet12OC0dT9ybAI
	qq+fvByHhuiDfwoM8fldmOBG4uVLFbwaqOjc7SEsjBqNG77LThCzvmjMl9rTrqzPCOKP
	WBa+3haKa7283MqNsT+hEgDGwr9lsZSBo+d0qnDiX5jT6R1dBbP9JnhCr/2YDBXkckgv
	lg9w==
Received: by 10.112.83.229 with SMTP id t5mr4115664lby.8.1344710233154; Sat,
	11 Aug 2012 11:37:13 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Sat, 11 Aug 2012 11:36:53 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1208111422560.12092@oneiric>
References: <alpine.DEB.2.02.1208111301170.5438@oneiric>
	<CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
	<alpine.DEB.2.02.1208111422560.12092@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 11 Aug 2012 11:36:53 -0700
X-Google-Sender-Auth: gsc6NrVpuUcIUR5aGSG4bwAxcrE
Message-ID: <CABcZANmXySuVe03ODbLqPhao75b+e0Y8muCUL_D=wz-9ek9_Aw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: under what circumstances is BBCLASSEXTEND = "native" required in a recipe?
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
X-List-Received-Date: Sat, 11 Aug 2012 18:37:15 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 11, 2012 at 11:32 AM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
> On Sat, 11 Aug 2012, Chris Larson wrote:
>
>> On Sat, Aug 11, 2012 at 10:03 AM, Robert P. J. Day
>> <rpjday@crashcourse.ca> wrote:
>> >   however, the "chrpath" command is not listed in bitbake as part of
>> > ASSUME_PROVIDED, and its recipe includes the line
>> >
>> >   BBCLASSEXTEND = "native"
>> >
>> > that's what's confusing -- if the QS guide demands that the user
>> > install "chrpath" manually, what is the subsequent value of its recipe
>> > dictating that it be natively buildable?
>>
>> At a guess, it's possible that not all recipes that needed
>> chrpath-native had an explicit dependency on it, or similar. Your
>> question is specific to chrpath, not at all general to
>> BBCLASSEXTEND. Adding native to bbclassextend means that a -native
>> version of the recipe can be built. The question of why certain
>> things are expected on the host vs built from that recipe is an
>> entirely different one.
>
>   i believe i see your logic.  just to clarify, it seems somewhat
> redundant to a) *require* the developer to manually install certain
> commands on the yocto dev host, and b) simultaneously have a recipe
> for that command that allows it to be built natively, in case yocto
> needs it.
>
>   does that make sense?  i'm assuming the sole reason to support a
> -native build in a recipe is for yocto use on the dev host, right?
>
> rday
>
> p.s.  as a more obvious example, consider "git".  it's now
> "ASSUME_PROVIDED", and listed in the quick start guide as required on
> the dev host, but it also still supports a native build.  i'm just
> trying to clarify that, in cases like that, supporting the -native
> build is no longer necessary.  or am i missing something?

Supporting it isn't necessary, this is true, but we do want to remove
as many hard host dependencies as possible over time, no? Perhaps the
bbclassextend only exists to prepare for such a point. Also, having a
-native available doesn't *harm* anything. At most it slightly
increases ram usage up front when it produces the second variation of
the recipe.
-- 
Christopher Larson

