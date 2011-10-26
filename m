Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A195BE005BB
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 01:20:59 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id D9A0F235CE
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 07:34:32 +0100 (BST)
Message-ID: <4EA7C2AD.5000308@communistcode.co.uk>
Date: Wed, 26 Oct 2011 09:19:57 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
	<4EA6CB6F.9060304@communistcode.co.uk>
	<CAPhnLPD5jXHHtjS=8Z-Yv-+2-qe5r5zhr6P7F1x3G3QFRTgLKA@mail.gmail.com>
In-Reply-To: <CAPhnLPD5jXHHtjS=8Z-Yv-+2-qe5r5zhr6P7F1x3G3QFRTgLKA@mail.gmail.com>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Wed, 26 Oct 2011 08:21:05 -0000
Content-Type: multipart/alternative;
	boundary="------------030505030707040405030708"

--------------030505030707040405030708
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2011 22:40, Flanagan, Elizabeth wrote:
> On Tue, Oct 25, 2011 at 7:45 AM, Jack Mitchell<ml@communistcode.co.uk>  wrote:
>> Hi Jessica,
>>
>> I posted my environment settings earlier, which are located here:
>> http://pastebin.com/4vnWPAD2
>>
>> Yes, I did use bitbake meta-ide-support to build my roo
>>
>> Hi Jessica,
>>
>> I just did a full fresh re-build from scratch and now my environment
>> variables are as follows:
>>
>> http://ix.io/1Wf
>>
>> My current git status is:
>>
>> # On branch edision
>> # Untracked files:
>> #   (use "git add<file>..." to include in what will be committed)
>> #
>> #    ../bitbake/lib/bb/pysh/pyshtables.py
>> #    ../conf/
>> #    ./
>> #    ../qemuarm-toolchain/
>> nothing added to commit but untracked files present (use "git add" to track)
> Jack,
>
> I just checked out a clean edison and ran bitbake meta-ide-support. My
> env is showing export OECORE_DISTRO_VERSION="1.1". My guess is that,
> since you are not in master, then you have a TMPDIR from a master
> build, or perhaps are using something left over from one, as the only
> place DISTRO_VERSION = "1.1+snapshot-${DATE}" would be there. Prior to
> c88b991 on edison, DISTRO_VERSION = "1.0+snapshot-${DATE}". So you're
> picking that up from some prior master build. It's not an older
> version of edison as if it was an older version of edison it would be
> 1.0+snapshot-${DATE
>
> -b
>

Ok, this is some more debug info:

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1+snapshot-20111026"
TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-db-generic   = "edision:b4757833c3548b5ee3a1cce58e2f059b3f63cb09"

Could it be that because I have my own layer present it's skewing the 
git? Should the eclipse plug-in not match 1.1*?

Could you check your file of meta-yocto/conf/distro/poky.conf for the 
variable DISTRO_VERSION, it should be "1.1'.

It does indeed state 1.1.





--------------030505030707040405030708
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 25/10/2011 22:40, Flanagan, Elizabeth wrote:
    <blockquote
cite="mid:CAPhnLPD5jXHHtjS=8Z-Yv-+2-qe5r5zhr6P7F1x3G3QFRTgLKA@mail.gmail.com"
      type="cite">
      <pre wrap="">On Tue, Oct 25, 2011 at 7:45 AM, Jack Mitchell <a class="moz-txt-link-rfc2396E" href="mailto:ml@communistcode.co.uk">&lt;ml@communistcode.co.uk&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
Hi Jessica,

I posted my environment settings earlier, which are located here:
<a class="moz-txt-link-freetext" href="http://pastebin.com/4vnWPAD2">http://pastebin.com/4vnWPAD2</a>

Yes, I did use bitbake meta-ide-support to build my roo

Hi Jessica,

I just did a full fresh re-build from scratch and now my environment
variables are as follows:

<a class="moz-txt-link-freetext" href="http://ix.io/1Wf">http://ix.io/1Wf</a>

My current git status is:

# On branch edision
# Untracked files:
#&nbsp;&nbsp; (use "git add &lt;file&gt;..." to include in what will be committed)
#
#&nbsp;&nbsp;&nbsp; ../bitbake/lib/bb/pysh/pyshtables.py
#&nbsp;&nbsp;&nbsp; ../conf/
#&nbsp;&nbsp;&nbsp; ./
#&nbsp;&nbsp;&nbsp; ../qemuarm-toolchain/
nothing added to commit but untracked files present (use "git add" to track)
</pre>
      </blockquote>
      <pre wrap="">
Jack,

I just checked out a clean edison and ran bitbake meta-ide-support. My
env is showing export OECORE_DISTRO_VERSION="1.1". My guess is that,
since you are not in master, then you have a TMPDIR from a master
build, or perhaps are using something left over from one, as the only
place DISTRO_VERSION = "1.1+snapshot-${DATE}" would be there. Prior to
c88b991 on edison, DISTRO_VERSION = "1.0+snapshot-${DATE}". So you're
picking that up from some prior master build. It's not an older
version of edison as if it was an older version of edison it would be
1.0+snapshot-${DATE

-b

</pre>
    </blockquote>
    <br>
    Ok, this is some more debug info:<br>
    <br>
    OE Build Configuration:<br>
    BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "1.13.3"<br>
    TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "arm"<br>
    TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "linux-gnueabi"<br>
    MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "qemuarm"<br>
    DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "poky"<br>
    DISTRO_VERSION&nbsp;&nbsp;&nbsp; = "1.1+snapshot-20111026"<br>
    TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; = "armv5 dsp thumb arm926ejs"<br>
    TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "soft"<br>
    meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
    meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
    meta-db-generic&nbsp;&nbsp; =
    "edision:b4757833c3548b5ee3a1cce58e2f059b3f63cb09"<br>
    <br>
    Could it be that because I have my own layer present it's skewing
    the git? Should the eclipse plug-in not match 1.1*?<br>
    <font face="Courier New, Courier, monospace"><br>
      Could you check your file of meta-yocto/conf/distro/poky.conf for
      the variable DISTRO_VERSION, it should be "1.1'. </font><br>
    <br>
    It does indeed state 1.1.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------030505030707040405030708--
