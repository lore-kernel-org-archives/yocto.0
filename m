Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 590DAE00AB6; Fri,  3 Mar 2017 08:13:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74FEE00A26
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 08:13:29 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id 203so15573314ith.0
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 08:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/GL07lu4e71vWNElZRBAc11GkOkaG1YLLF2Pbn6FjK8=;
	b=MasbmzdTcB+nCjfg4lXAe12NRF/QdjY9QVJd+Od/smyr4nW+xSNhY6ooLDk7DVo1rm
	uPplRdgv0dogbhiX4T+X3GEwqXsISwnm7YB/QXRF9dsl6JSuzEAYXGQmZItlPxcqCHh2
	3t8J1DgXnjG4rQbyJOnIj7Ox4vBY8lFb3Wy4gQe0kOG92kGXxpS/mbZBDxZTwGbMU0PD
	yR3WS6Fiw2Z6e3Jr7QeYTVNMyxp9+ytkYTDM0BN19bx+A3eg0PnQO7On/a0gfqo9p+eX
	sBpzsYqVkUtPUjBTrkcSoUHxtUMZthGdl56fL4Vsd8tpxhh96a81NoBP0tQ3HbVY5Pu1
	SENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/GL07lu4e71vWNElZRBAc11GkOkaG1YLLF2Pbn6FjK8=;
	b=NbdzKG3qV6cFRkHcOE9p+PuqFvT6qELjUrNCvHqpKmyuNTU9eE6qhgaX3qZVD4NXyr
	bgMKjm/6jKsKmzDYQ/7DXXUg54GqI2dtrGfWuQUpRTQ9EGsPEiquxrSmCo21prPX8f6h
	PFJGFTc4nMt8bBfRf2KrAOrIA+lFsdStTIPRSVllUV/JhH+B+g+1HzaoDSaSz1ru2urR
	Nzya3aev5AbgHXgq9YqSg57W+ek22ediZv/gDkdVygyBrHj3cHGMsBbXlyP/j1xucXw9
	nHUcPVwjCx3NiRuT4vUC7LEs8V9DJo/XP4TNU9M8VwLKfWseXROaVTdWSgurWgrbl9yc
	qaIw==
X-Gm-Message-State: AMke39mNkfnHZjohGlrd12RehnCxE0orDGrolb4uXlWGiG/L6zSEV/NpPhi7ArW05OdMp+BF+st2mWcFkGF0Pw==
X-Received: by 10.36.51.68 with SMTP id k65mr3388967itk.4.1488557608996; Fri,
	03 Mar 2017 08:13:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.158.69 with HTTP; Fri, 3 Mar 2017 08:13:28 -0800 (PST)
In-Reply-To: <CAJTo0LZPA1ta5Jp9q6yeEz+V3Vt+pye6NpmEHg97U87FjXqwUQ@mail.gmail.com>
References: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
	<CAJTo0LZPA1ta5Jp9q6yeEz+V3Vt+pye6NpmEHg97U87FjXqwUQ@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 3 Mar 2017 17:13:28 +0100
Message-ID: <CAFq4t4gLoQfM5gtD73Nx-_h6SCMa8Qyf807nFo-BOTF4kbOpfA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto's framebuffer-vncserver
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
X-List-Received-Date: Fri, 03 Mar 2017 16:13:32 -0000
Content-Type: multipart/alternative; boundary=001a1143cdb08324360549d5d37d

--001a1143cdb08324360549d5d37d
Content-Type: text/plain; charset=UTF-8

actually thare are two recpies:

framebuffer-vncserver_git.bb

...
inherit cmake
...

libvncserver_git.bb

...
inherit autotools
...


where to "inherit" ?




On Fri, Mar 3, 2017 at 5:06 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 3 March 2017 at 16:04, Peter Balazovic <balazovic.peter@gmail.com>
> wrote:
>
>> I am not successfull to include it into my image, here is a part of a log
>> build:
>>
>> | ../git/configure: line 13581: syntax error near unexpected token `GTK,'
>> | ../git/configure: line 13581: `PKG_CHECK_MODULES(GTK, gtk+-2.0,,:)'
>> | NOTE: The following config.log files may provide further information.
>> | WARNING: exit code 1 from a shell command.
>> | NOTE: /mnt/work/Linux/build-fb/tmp/work/aarch64-poky-linux/libvncs
>> erver/git-r1+gitrAUTOINC+5b322f523f/build/config.log
>> | ERROR: configure failed
>> | ERROR: Function failed: do_configure (log file is located at
>> /mnt/work/Linux//build-fb/tmp/work/aarch64-poky-linux/libvnc
>> server/git-r1+gitrAUTOINC+5b322f523f/temp/log.do_configure.11798)
>> ERROR: Task 866 (/mnt/work/Linu//sources/meta-
>> openembedded/meta-oe/recipes-graphics/famebuffer-vnc/libvncserver_git.bb,
>> do_configure) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 5407 tasks of which 5406 didn't need to be
>> rerun and 1 failed.
>>
>> Does anybode have idea where problem might be?
>>
>
> Inherit pkgconfig in your recipe.
>
> Ross
>

--001a1143cdb08324360549d5d37d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">actually thare are two recpies:<div><br></div><div><a href=
=3D"http://framebuffer-vncserver_git.bb">framebuffer-vncserver_git.bb</a>=
=C2=A0<br></div><div><br></div><div><span style=3D"color:rgb(36,41,46);font=
-family:sfmono-regular,consolas,&quot;liberation mono&quot;,menlo,courier,m=
onospace;font-size:12px;white-space:pre">...</span></div><div><span style=
=3D"color:rgb(36,41,46);font-family:sfmono-regular,consolas,&quot;liberatio=
n mono&quot;,menlo,courier,monospace;font-size:12px;white-space:pre">inheri=
t cmake</span></div><div><span style=3D"color:rgb(36,41,46);font-family:sfm=
ono-regular,consolas,&quot;liberation mono&quot;,menlo,courier,monospace;fo=
nt-size:12px;white-space:pre">...</span></div><div><span style=3D"color:rgb=
(36,41,46);font-family:sfmono-regular,consolas,&quot;liberation mono&quot;,=
menlo,courier,monospace;font-size:12px;white-space:pre"><br></span></div><d=
iv><a href=3D"http://libvncserver_git.bb">libvncserver_git.bb</a><span styl=
e=3D"color:rgb(36,41,46);font-family:sfmono-regular,consolas,&quot;liberati=
on mono&quot;,menlo,courier,monospace;font-size:12px;white-space:pre"><br><=
/span></div><div><br></div><div>...</div><div><span style=3D"color:rgb(36,4=
1,46);font-family:sfmono-regular,consolas,&quot;liberation mono&quot;,menlo=
,courier,monospace;font-size:12px;white-space:pre">inherit autotools</span>=
<br></div><div>...</div><div><br></div><div><br></div><div>where to &quot;i=
nherit&quot; ?</div><div>=C2=A0<br></div><div><br></div><div><br></div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 3, =
2017 at 5:06 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.=
burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail=
_extra"><span class=3D""><br><div class=3D"gmail_quote">On 3 March 2017 at =
16:04, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"mailto:balazovic.pe=
ter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div>I am not successfull to includ=
e it into my image, here is a part of a log build:</div><div><br></div><div=
>| ../git/configure: line 13581: syntax error near unexpected token `GTK,&#=
39;</div><div>| ../git/configure: line 13581: `PKG_CHECK_MODULES(GTK, gtk+-=
2.0,,:)&#39;</div><div>| NOTE: The following config.log files may provide f=
urther information.</div><div>| WARNING: exit code 1 from a shell command.<=
/div><div>| NOTE: /mnt/work/Linux/build-fb/tmp/w<wbr>ork/aarch64-poky-linux=
/libvncs<wbr>erver/git-r1+gitrAUTOINC+<wbr>5b322f523f/build/config.log</div=
><div>| ERROR: configure failed</div><div>| ERROR: Function failed: do_conf=
igure (log file is located at /mnt/work/Linux//build-fb/tmp/<wbr>work/aarch=
64-poky-linux/libvnc<wbr>server/git-r1+gitrAUTOINC+<wbr>5b322f523f/temp/log=
.do_<wbr>configure.11798)</div><div>ERROR: Task 866 (/mnt/work/Linu//source=
s/meta-<wbr>openembedded/meta-oe/recipes-g<wbr>raphics/famebuffer-vnc/<a hr=
ef=3D"http://libvncserver_git.bb" target=3D"_blank">libvncs<wbr>erver_git.b=
b</a>, do_configure) failed with exit code &#39;1&#39;</div><div>NOTE: Task=
s Summary: Attempted 5407 tasks of which 5406 didn&#39;t need to be rerun a=
nd 1 failed.</div><div><br></div><div>Does anybode have idea where problem =
might be?</div><div></div></blockquote></div><br></span>Inherit pkgconfig i=
n your recipe.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></=
span></div>
</blockquote></div><br></div>

--001a1143cdb08324360549d5d37d--
