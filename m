Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41877E009EC; Sat, 18 Jul 2015 02:30:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37853E0034B
	for <yocto@yoctoproject.org>; Sat, 18 Jul 2015 02:30:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id AF17927E2D3;
	Sat, 18 Jul 2015 09:30:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id W-uRMoqXd3rG; Sat, 18 Jul 2015 09:30:08 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 58F1527E289;
	Sat, 18 Jul 2015 09:30:08 +0000 (UTC)
Message-ID: <55AA1C97.10704@dynamicdevices.co.uk>
Date: Sat, 18 Jul 2015 10:29:59 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437151912.git.rich.tollerton@ni.com>	<55A93AAF.7010601@dynamicdevices.co.uk>	<87y4iewsku.fsf@weregild.amer.corp.natinst.com>
	<55A94D03.207@dynamicdevices.co.uk>
In-Reply-To: <55A94D03.207@dynamicdevices.co.uk>
Subject: Re: [meta-mono] [RFC] [PATCH 0/1] Force MONO_CFG_DIR
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
X-List-Received-Date: Sat, 18 Jul 2015 09:30:16 -0000
Content-Type: multipart/alternative;
	boundary="------------020400010806030703020205"

--------------020400010806030703020205
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Richard,

On 17/07/2015 19:44, Alex J Lennon wrote:
>
> On 17/07/2015 19:24, Richard Tollerton wrote:
>> Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:
>>
>>> Hi Richard,
>>>
>>> On 17/07/2015 17:57, Richard Tollerton wrote:
>>>> Hi Alex,
>>>>
>>>> When you mentioned having weird build troubles, that reminded me that I
>>>> was seeing weird build problems of my own, that I had been refraining
>>>> from sending patches on until I could better characterize the issue.
>>>>
>>>> If you've been seeing weird build failures in executables that really
>>>> should never be failing in the first place -- i.e., gacutils failures,
>>>> or "invalid resx file", or anything involving not being able to dlopen
>>>> libc or being unable to open /etc/mono/config -- you might be interested
>>>> in this patch.
>>> I think I have identified the problems I was seeing with the recipes,
>>> which boil down to the lack of a mono gmcs script and inheriting
>>> autotools-brokensep instead of autotools.
>>>
>>> I can't quite understand why you were not seeing the problem at your
>>> end, but I can see that gmcs was removed at end 2014 -
>>>
>>> https://github.com/mono/mono/commit/b304ec5e0e694ef7098e0fc3eba9dbc0162f4568
>> Yeah, I saw it too. :F I wound up working around it by adding a gmcs
>> symlink in the recipe, but then I also added a gmcs symlink in my host
>> OS, which wound up masking the build errors when I tried removing the
>> gmcs symlink from the recipe later.
>>
>> There were also some autotools-brokensep build problems I was planning
>> on submitting later, sounds like you got those fixed first (yay!)
> Good - that explains it then. Yes autotools-brokensep is in there now.
> The gmcs workaround will arrive shortly
>
>>> The commits I made today address the autotools-brokensep issue and get
>>> me to a point where I can build image-full-mono with a hand-added gmcs
>>> script in sysroot
>>>
>>> (There was a patch needed for monotools-server to support the more
>>> recent mono-xsp and mono-upnp needed autotools-brokensep).
>>>
>>> Now I just need to decide whether to reintroduce the gmcs script or fix
>>> all the other autotools configurations...
>> A-ha! mono-xsp fixed its gmcs references in master, but hasn't cut a
>> release since May 2013. I just asked on #monodev for somebody to cut a
>> new release, but until then, I suppose a workaround is to create a
>> mono-xsp_git.bb?
>>
>> Which other packages require gmcs? I see that monotools-server does, but
>> I can't find evidence of that being maintained since 2010, and I
>> otherwise don't have a use for it AFAIK.

Out of image-full-mono these have problems without gmcs present,

Looks like we need a solution for these three to use mcs instead of gmcs,

mono-xsp_3.0.11.bb

checking for gmcs... no
configure: WARNING: unrecognized options: --disable-dependency-tracking,
--with-libtool-sysroot
configure: WARNING: using cross tools not prefixed with host triplet
configure: error: You need to install 'gmcs'
Error: Could not run ./configure, which is required to configure xsp

dbus-sharp_0.8.0.bb

checking for MONO... yes
checking for gmcs... no
configure: error: You need to install gmcs
Configure failed. The contents of all config.log files follows to aid
debugging

mono-addins_1.1.bb

checking for pkg-config...
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
checking for gmcs... no
configure: error: mcs Not found
Configure failed. The contents of all config.log files follows to aid
debugging

...

mono-upnp (requires mono-addins)
dbus-sharp-glib (requires dbus-sharp)
monotools-server (requires mono-xsp)

Cheers,

Alex


--------------020400010806030703020205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
    <link href="chrome://translator/skin/floatingPanel.css"
      type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Richard,<br>
    <br>
    <div class="moz-cite-prefix">On 17/07/2015 19:44, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote cite="mid:55A94D03.207@dynamicdevices.co.uk" type="cite">
      <pre wrap="">

On 17/07/2015 19:24, Richard Tollerton wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Alex J Lennon <a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a> writes:

</pre>
        <blockquote type="cite">
          <pre wrap="">Hi Richard,

On 17/07/2015 17:57, Richard Tollerton wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">Hi Alex,

When you mentioned having weird build troubles, that reminded me that I
was seeing weird build problems of my own, that I had been refraining
from sending patches on until I could better characterize the issue.

If you've been seeing weird build failures in executables that really
should never be failing in the first place -- i.e., gacutils failures,
or "invalid resx file", or anything involving not being able to dlopen
libc or being unable to open /etc/mono/config -- you might be interested
in this patch.
</pre>
          </blockquote>
          <pre wrap="">I think I have identified the problems I was seeing with the recipes,
which boil down to the lack of a mono gmcs script and inheriting
autotools-brokensep instead of autotools.

I can't quite understand why you were not seeing the problem at your
end, but I can see that gmcs was removed at end 2014 -

<a class="moz-txt-link-freetext" href="https://github.com/mono/mono/commit/b304ec5e0e694ef7098e0fc3eba9dbc0162f4568">https://github.com/mono/mono/commit/b304ec5e0e694ef7098e0fc3eba9dbc0162f4568</a>
</pre>
        </blockquote>
        <pre wrap="">Yeah, I saw it too. :F I wound up working around it by adding a gmcs
symlink in the recipe, but then I also added a gmcs symlink in my host
OS, which wound up masking the build errors when I tried removing the
gmcs symlink from the recipe later.

There were also some autotools-brokensep build problems I was planning
on submitting later, sounds like you got those fixed first (yay!)
</pre>
      </blockquote>
      <pre wrap="">
Good - that explains it then. Yes autotools-brokensep is in there now.
The gmcs workaround will arrive shortly

</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre wrap="">The commits I made today address the autotools-brokensep issue and get
me to a point where I can build image-full-mono with a hand-added gmcs
script in sysroot

(There was a patch needed for monotools-server to support the more
recent mono-xsp and mono-upnp needed autotools-brokensep).

Now I just need to decide whether to reintroduce the gmcs script or fix
all the other autotools configurations...
</pre>
        </blockquote>
        <pre wrap="">A-ha! mono-xsp fixed its gmcs references in master, but hasn't cut a
release since May 2013. I just asked on #monodev for somebody to cut a
new release, but until then, I suppose a workaround is to create a
mono-xsp_git.bb?

Which other packages require gmcs? I see that monotools-server does, but
I can't find evidence of that being maintained since 2010, and I
otherwise don't have a use for it AFAIK.
</pre>
      </blockquote>
    </blockquote>
    <br>
    Out of image-full-mono these have problems without gmcs present,<br>
    <br>
    Looks like we need a solution for these three to use mcs instead of
    gmcs,<br>
    <br>
    mono-xsp_3.0.11.bb<br>
    <br>
    checking for gmcs... no<br>
    configure: WARNING: unrecognized options:
    --disable-dependency-tracking, --with-libtool-sysroot<br>
    configure: WARNING: using cross tools not prefixed with host triplet<br>
    configure: error: You need to install 'gmcs'<br>
    Error: Could not run ./configure, which is required to configure xsp<br>
    <br>
    dbus-sharp_0.8.0.bb<br>
    <br>
    checking for MONO... yes<br>
    checking for gmcs... no<br>
    configure: error: You need to install gmcs<br>
    Configure failed. The contents of all config.log files follows to
    aid debugging<br>
    <br>
    mono-addins_1.1.bb<br>
    <br>
    checking for pkg-config...
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/sysroots/x86_64-linux/usr/bin/pkg-config<br>
    checking for gmcs... no<br>
    configure: error: mcs Not found<br>
    Configure failed. The contents of all config.log files follows to
    aid debugging<br>
    <br>
    ...<br>
    <br>
    mono-upnp (requires mono-addins)<br>
    dbus-sharp-glib (requires dbus-sharp)<br>
    monotools-server (requires mono-xsp)<br>
    <br>
    Cheers, <br>
    <br>
    Alex<br>
    <br>
    <div style="bottom: auto; left: 227px; right: auto; top: 721px;
      display: none;" class="translator-theme-default"
      id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------020400010806030703020205--
