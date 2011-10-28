Return-Path: <bsp2020@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BFEDE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:06:09 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iakh37 with SMTP id h37so6746670iak.35
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 10:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QyoLLY9ZFMWFHxuvchjhh5XbZ4tsAMVn/w0MeD3DAn8=;
	b=pYVGO6XQ7mxYZR+RmIRscXIVX3Nk2GEbSVtf4xyccZDHPncjFNwSRL6Aj9BH2hnlk0
	VkiUgfLEKSB1dsKQISh3TQZt5EdGEbrv9gAngFJAbKGphnve/F/Usli2G4B/cHTIaTlN
	0OvJQ3ByHN/yxBk8Wt3XgUxt5U0Rr+fh9uOBY=
MIME-Version: 1.0
Received: by 10.42.154.7 with SMTP id o7mr5230403icw.48.1319821568630; Fri, 28
	Oct 2011 10:06:08 -0700 (PDT)
Received: by 10.42.221.202 with HTTP; Fri, 28 Oct 2011 10:06:08 -0700 (PDT)
In-Reply-To: <4EAA34EB.5060205@windriver.com>
References: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
	<4EAA34EB.5060205@windriver.com>
Date: Fri, 28 Oct 2011 10:06:08 -0700
Message-ID: <CAFNE1kT5F9DXDBVsYwduvCRJ8GxOxc8u9h_FVjuTpO9+4y8VKg@mail.gmail.com>
From: Brian Park <bsp2020@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building for pandaboard
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
X-List-Received-Date: Fri, 28 Oct 2011 17:06:09 -0000
Content-Type: multipart/alternative; boundary=90e6ba1efd2ec3e05a04b05ee764

--90e6ba1efd2ec3e05a04b05ee764
Content-Type: text/plain; charset=ISO-8859-1

Thanks for the info.
As I'm very new to Yocto, I'd not know how to create local.conf to build for
panda, even knowing that the kernel will support pandaboard. How would I go
about configuring Yocto to build for panda? If you can point me to some
documentation showing how to do it, I'd appreciate it.

I'm just learning yocto, in my spare time, and just went through the quick
start guide to build for x86qemu image and skimmed through the development
manual. But I'm not too sure how to go about configuring for pandaboard. I
figured, I can build for beagle board and then modify config to make it work
for panda. However, I'm having build issue when trying to build for beagle
board.

If there is already an existing pandaboard config, I'd like to try it.

Thank you.

Brian

On Thu, Oct 27, 2011 at 9:51 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 11-10-27 8:45 PM, Brian Park wrote:
>
>> Hi,
>> I'm interested in using Yocto to build linux for PandaBoard. It seems
>> there are already patches some where that I can use to build for panda,
>> as I found some discussions mentioning PandaBoard patch in the archive.
>> But I could not apply it. I'd appreciate some pointers on how to find
>> and apply the right patch.
>>
>> Just trying to apply
>> http://article.gmane.org/**gmane.linux.embedded.yocto.**
>> general/2037/match=pandaboard<http://article.gmane.org/gmane.linux.embedded.yocto.general/2037/match=pandaboard>
>> as a patch using "git am" command gave the following error. I'm using
>> release 1.1 Edison.
>>
>> briansp@LinuxMint11 ~/poky $ git am < ~/Documents/pandaboard.patch
>> previous rebase directory /home/briansp/poky/.git/**rebase-apply still
>> exists but mbox given.
>>
>> I'm new to developing for linux and yocto. So, any help would be
>> appreciated.
>>
>
> Those same patches are merged into the 2.6.37 kernel tree here:
>
> http://git.yoctoproject.org/**cgit/cgit.cgi/linux-yocto-2.6.**
> 37/log/?h=yocto/standard/**pandaboard<http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37/log/?h=yocto/standard/pandaboard>
>
> So if you do want to use the linux-yocto kernel, you could set
> your preferred kernel version to 2.6.37 and you'd get that
> kernel and branch for the board.
>
> But like anything, nothing is completely simple, the support in
> the 2.6.37 tree was contributed in an effort to add some more board
> support to a yocto tested/standardized kernel. There are multiple
> sources for pandaboard support, with different functionality (i.e. deeper,
> different kernel version, etc), different integration and
> different goals. i.e. angstrom and meta-texasinstruments.
>
> To use the 2.6.37 support you'd need a configuration of the machine and
> a meta layer defining the userspace. There was a prototype one that
> floated around, but it was being re-worked to use layer tooling and not
> duplicate effort that is in other layers already.
>
> If you like, I can locate that layer and send it along, or you can
> try out the other references I mentioned (others may have better /
> more detailed information).
>
> Cheers,
>
> Bruce
>
>
>> Thank you
>>
>> Brian
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
>

--90e6ba1efd2ec3e05a04b05ee764
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for the info. <br>As I&#39;m very new to Yocto, I&#39;d not know how=
 to create local.conf to build for panda, even knowing that the kernel will=
 support pandaboard. How would I go about configuring Yocto to build for pa=
nda? If you can point me to some documentation showing how to do it, I&#39;=
d appreciate it.<br>
<br>I&#39;m just learning yocto, in my spare time, and just went through th=
e quick start guide to build for x86qemu image and skimmed through the deve=
lopment manual. But I&#39;m not too sure how to go about configuring for pa=
ndaboard. I figured, I can build for beagle board and then modify config to=
 make it work for panda. However, I&#39;m having build issue when trying to=
 build for beagle board.<br>
<br>If there is already an existing pandaboard config, I&#39;d like to try =
it.<br><br>Thank you.<br><br>Brian<br><br><div class=3D"gmail_quote">On Thu=
, Oct 27, 2011 at 9:51 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"=
mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div><div></div><div class=3D"h5">On 11-10-=
27 8:45 PM, Brian Park wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
I&#39;m interested in using Yocto to build linux for PandaBoard. It seems<b=
r>
there are already patches some where that I can use to build for panda,<br>
as I found some discussions mentioning PandaBoard patch in the archive.<br>
But I could not apply it. I&#39;d appreciate some pointers on how to find<b=
r>
and apply the right patch.<br>
<br>
Just trying to apply<br>
<a href=3D"http://article.gmane.org/gmane.linux.embedded.yocto.general/2037=
/match=3Dpandaboard" target=3D"_blank">http://article.gmane.org/<u></u>gman=
e.linux.embedded.yocto.<u></u>general/2037/match=3Dpandaboard</a><br>
as a patch using &quot;git am&quot; command gave the following error. I&#39=
;m using<br>
release 1.1 Edison.<br>
<br>
briansp@LinuxMint11 ~/poky $ git am &lt; ~/Documents/pandaboard.patch<br>
previous rebase directory /home/briansp/poky/.git/<u></u>rebase-apply still=
<br>
exists but mbox given.<br>
<br>
I&#39;m new to developing for linux and yocto. So, any help would be<br>
appreciated.<br>
</blockquote>
<br></div></div>
Those same patches are merged into the 2.6.37 kernel tree here:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37/log=
/?h=3Dyocto/standard/pandaboard" target=3D"_blank">http://git.yoctoproject.=
org/<u></u>cgit/cgit.cgi/linux-yocto-2.6.<u></u>37/log/?h=3Dyocto/standard/=
<u></u>pandaboard</a><br>

<br>
So if you do want to use the linux-yocto kernel, you could set<br>
your preferred kernel version to 2.6.37 and you&#39;d get that<br>
kernel and branch for the board.<br>
<br>
But like anything, nothing is completely simple, the support in<br>
the 2.6.37 tree was contributed in an effort to add some more board<br>
support to a yocto tested/standardized kernel. There are multiple<br>
sources for pandaboard support, with different functionality (i.e. deeper, =
different kernel version, etc), different integration and<br>
different goals. i.e. angstrom and meta-texasinstruments.<br>
<br>
To use the 2.6.37 support you&#39;d need a configuration of the machine and=
<br>
a meta layer defining the userspace. There was a prototype one that<br>
floated around, but it was being re-worked to use layer tooling and not<br>
duplicate effort that is in other layers already.<br>
<br>
If you like, I can locate that layer and send it along, or you can<br>
try out the other references I mentioned (others may have better /<br>
more detailed information).<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thank you<br>
<br>
Brian<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote>
<br>
</blockquote></div><br>

--90e6ba1efd2ec3e05a04b05ee764--
