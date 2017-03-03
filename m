Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C614BE00566; Fri,  3 Mar 2017 08:23:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2496BE0049D
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 08:23:22 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id n76so11868991ioe.1
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 08:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nhEywpUu7taJqX1Ogjb83rSmz8pmEXa6bI9ACtGdv1g=;
	b=bAmpEPa6fMTYkhOLsb1uJZysidHryivlCpxOpkpaszPSNv73jlNYzFC48kktF2ip/6
	pc7aPbZDhn9QVDFpY811fQFL/eEIh53YoxEBOHEdJ+BUucoPnplF4/830T17TBVsVCJq
	rABt9sNBSc3hT0fOzNc/VzUwJPsJ6a/WzQN2uxCgB3cC90BCNEosiAt4cawCvg3z7+r1
	Zo3cCcguJmu//SEwl8TEFo2eHtzmTh73liQTAU10zn3Oslo9tBuShXF58wIw3gEGJsac
	my+m7XmfhhqsI5sUMxx/1PehyEw2/BUSH77SwrZViWFZf9Z6Jwe6vTNoPpW7PCTOPTYu
	qNSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nhEywpUu7taJqX1Ogjb83rSmz8pmEXa6bI9ACtGdv1g=;
	b=k5dKzNVVTO+/4S9ELg/zuDWoX+8swyjMP5ua6XX0AaHg5pCKm1FR6K7Fwoo1EncQm9
	7CDhNJlMT7MTk0aKxgDJ5Pv50I0T6vIDxwLVC0DhiquDSouNGuM0dUJxAzeq8BzNA1OB
	rQFedt2TNox/hNg2kI9X0ttRCU5BzUkWABySYS61fGgk2/akrfFLTvvD36obzh1ycCT4
	Qu6iNrn3vaAh7xYfPg2dKJWgeVRhjodmNIt2mCyRgdIwR79deM0VE+aKhQ2mGq8/F++n
	TcmZcu6QZWegJlXl+jBmbxiLFuU8EwCSr3m+ubOmqz3QuYD9/cznjgWosF6Z/WztAsyp
	XY0w==
X-Gm-Message-State: AMke39mwOGkch0WHDfUs+dytPopy3hyiD8LTcc4c84c+IJn75KsX6yH+iRoYPwWUhv3w1WWlkQyOjVJFGecj5w==
X-Received: by 10.107.182.9 with SMTP id g9mr3090159iof.233.1488558201197;
	Fri, 03 Mar 2017 08:23:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.158.69 with HTTP; Fri, 3 Mar 2017 08:23:20 -0800 (PST)
In-Reply-To: <CAFq4t4gLoQfM5gtD73Nx-_h6SCMa8Qyf807nFo-BOTF4kbOpfA@mail.gmail.com>
References: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
	<CAJTo0LZPA1ta5Jp9q6yeEz+V3Vt+pye6NpmEHg97U87FjXqwUQ@mail.gmail.com>
	<CAFq4t4gLoQfM5gtD73Nx-_h6SCMa8Qyf807nFo-BOTF4kbOpfA@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 3 Mar 2017 17:23:20 +0100
Message-ID: <CAFq4t4jZSOB+_0pm0Bx8a0d2AzH29V2R+MD7Yqx65OiLXmAZaw@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Mar 2017 16:23:24 -0000
Content-Type: multipart/alternative; boundary=001a114aca0ecf5d250549d5f651

--001a114aca0ecf5d250549d5f651
Content-Type: text/plain; charset=UTF-8

I inherited for

libvncserver_git.bb

...
inherit autotools pkgconfig


| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:510: recipe for target 'filetransfer' failed
| make[3]: *** [filetransfer] Error 1
| make[3]: *** Waiting for unfinished jobs....
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:542: recipe for target 'simple' failed
| make[3]: *** [simple] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:550: recipe for target 'storepasswd' failed
| make[3]: *** [storepasswd] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:502: recipe for target 'colourmaptest' failed
| make[3]: *** [colourmaptest] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so:collect2: error: ld returned 1 exit
status
|  undefined reference to `gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:534: recipe for target 'repeater' failed
| make[3]: *** [repeater] Error 1
| Makefile:546: recipe for target 'simple15' failed
| make[3]: *** [simple15] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:526: recipe for target 'pnmshow24' failed
| make[3]: *** [pnmshow24] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:498: recipe for target 'camera' failed
| make[3]: *** [camera] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:490: recipe for target 'backchannel' failed
| make[3]: *** [backchannel] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:514: recipe for target 'fontsel' failed
| make[3]: *** [fontsel] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:554: recipe for target 'vncev' failed
| make[3]: *** [vncev] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:522: recipe for target 'pnmshow' failed
| make[3]: *** [pnmshow] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:494: recipe for target 'blooptest' failed
| make[3]: *** [blooptest] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:506: recipe for target 'example' failed
| make[3]: *** [example] Error 1
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_open'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_read'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_get_algo_dlen'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_write'
| ../libvncserver/.libs/libvncserver.so: undefined reference to
`gcry_md_ctl'
| collect2: error: ld returned 1 exit status
| Makefile:558: recipe for target 'zippy' failed
| make[3]: *** [zippy] Error 1
| Makefile:623: recipe for target 'all-recursive' failed
| make[2]: *** [all-recursive] Error 1
| Makefile:540: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
\| Makefile:387: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
|

On Fri, Mar 3, 2017 at 5:13 PM, Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> actually thare are two recpies:
>
> framebuffer-vncserver_git.bb
>
> ...
> inherit cmake
> ...
>
> libvncserver_git.bb
>
> ...
> inherit autotools
> ...
>
>
> where to "inherit" ?
>
>
>
>
> On Fri, Mar 3, 2017 at 5:06 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>>
>> On 3 March 2017 at 16:04, Peter Balazovic <balazovic.peter@gmail.com>
>> wrote:
>>
>>> I am not successfull to include it into my image, here is a part of a
>>> log build:
>>>
>>> | ../git/configure: line 13581: syntax error near unexpected token `GTK,'
>>> | ../git/configure: line 13581: `PKG_CHECK_MODULES(GTK, gtk+-2.0,,:)'
>>> | NOTE: The following config.log files may provide further information.
>>> | WARNING: exit code 1 from a shell command.
>>> | NOTE: /mnt/work/Linux/build-fb/tmp/work/aarch64-poky-linux/libvncs
>>> erver/git-r1+gitrAUTOINC+5b322f523f/build/config.log
>>> | ERROR: configure failed
>>> | ERROR: Function failed: do_configure (log file is located at
>>> /mnt/work/Linux//build-fb/tmp/work/aarch64-poky-linux/libvnc
>>> server/git-r1+gitrAUTOINC+5b322f523f/temp/log.do_configure.11798)
>>> ERROR: Task 866 (/mnt/work/Linu//sources/meta-
>>> openembedded/meta-oe/recipes-graphics/famebuffer-vnc/libvncserver_git.bb,
>>> do_configure) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 5407 tasks of which 5406 didn't need to
>>> be rerun and 1 failed.
>>>
>>> Does anybode have idea where problem might be?
>>>
>>
>> Inherit pkgconfig in your recipe.
>>
>> Ross
>>
>
>

--001a114aca0ecf5d250549d5f651
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I inherited for=C2=A0<div><br></div><div><div style=3D"col=
or:rgb(0,0,0);font-size:12.8px"><a href=3D"http://libvncserver_git.bb/" tar=
get=3D"_blank">libvncserver_git.bb</a><span style=3D"color:rgb(36,41,46);fo=
nt-family:sfmono-regular,consolas,&quot;liberation mono&quot;,menlo,courier=
,monospace;font-size:12px;white-space:pre-wrap"><br></span></div><div style=
=3D"color:rgb(0,0,0);font-size:12.8px"><br></div><div style=3D"color:rgb(0,=
0,0);font-size:12.8px">...</div><div style=3D"color:rgb(0,0,0);font-size:12=
.8px"><span style=3D"color:rgb(36,41,46);font-family:sfmono-regular,consola=
s,&quot;liberation mono&quot;,menlo,courier,monospace;font-size:12px;white-=
space:pre-wrap">inherit autotools pkgconfig</span></div></div><div style=3D=
"color:rgb(0,0,0);font-size:12.8px"><span style=3D"color:rgb(36,41,46);font=
-family:sfmono-regular,consolas,&quot;liberation mono&quot;,menlo,courier,m=
onospace;font-size:12px;white-space:pre-wrap"><br></span></div><div style=
=3D"color:rgb(0,0,0);font-size:12.8px"><span style=3D"color:rgb(36,41,46);f=
ont-family:sfmono-regular,consolas,&quot;liberation mono&quot;,menlo,courie=
r,monospace;font-size:12px;white-space:pre-wrap"><br></span></div><div><div=
>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_o=
pen&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined refer=
ence to `gcry_md_read&#39;</div><div>| ../libvncserver/.libs/libvncserver.s=
o: undefined reference to `gcry_md_get_algo_dlen&#39;</div><div>| ../libvnc=
server/.libs/libvncserver.so: undefined reference to `gcry_md_write&#39;</d=
iv><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gc=
ry_md_ctl&#39;</div><div>| collect2: error: ld returned 1 exit status</div>=
<div>| Makefile:510: recipe for target &#39;filetransfer&#39; failed</div><=
div>| make[3]: *** [filetransfer] Error 1</div><div>| make[3]: *** Waiting =
for unfinished jobs....</div><div>| ../libvncserver/.libs/libvncserver.so: =
undefined reference to `gcry_md_open&#39;</div><div>| ../libvncserver/.libs=
/libvncserver.so: undefined reference to `gcry_md_read&#39;</div><div>| ../=
libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_get_alg=
o_dlen&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined re=
ference to `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/libvncserv=
er.so: undefined reference to `gcry_md_ctl&#39;</div><div>| collect2: error=
: ld returned 1 exit status</div><div>| Makefile:542: recipe for target &#3=
9;simple&#39; failed</div><div>| make[3]: *** [simple] Error 1</div><div>| =
../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_open=
&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined referenc=
e to `gcry_md_read&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: =
undefined reference to `gcry_md_get_algo_dlen&#39;</div><div>| ../libvncser=
ver/.libs/libvncserver.so: undefined reference to `gcry_md_write&#39;</div>=
<div>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_=
md_ctl&#39;</div><div>| collect2: error: ld returned 1 exit status</div><di=
v>| Makefile:550: recipe for target &#39;storepasswd&#39; failed</div><div>=
| make[3]: *** [storepasswd] Error 1</div><div>| ../libvncserver/.libs/libv=
ncserver.so: undefined reference to `gcry_md_open&#39;</div><div>| ../libvn=
cserver/.libs/libvncserver.so: undefined reference to `gcry_md_read&#39;</d=
iv><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gc=
ry_md_get_algo_dlen&#39;</div><div>| ../libvncserver/.libs/libvncserver.so:=
 undefined reference to `gcry_md_write&#39;</div><div>| ../libvncserver/.li=
bs/libvncserver.so: undefined reference to `gcry_md_ctl&#39;</div><div>| co=
llect2: error: ld returned 1 exit status</div><div>| Makefile:502: recipe f=
or target &#39;colourmaptest&#39; failed</div><div>| make[3]: *** [colourma=
ptest] Error 1</div><div>| ../libvncserver/.libs/libvncserver.so: undefined=
 reference to `gcry_md_open&#39;</div><div>| ../libvncserver/.libs/libvncse=
rver.so: undefined reference to `gcry_md_read&#39;</div><div>| ../libvncser=
ver/.libs/libvncserver.so: undefined reference to `gcry_md_get_algo_dlen&#3=
9;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference t=
o `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: un=
defined reference to `gcry_md_ctl&#39;</div><div>| ../libvncserver/.libs/li=
bvncserver.so: undefined reference to `gcry_md_open&#39;</div><div>| ../lib=
vncserver/.libs/libvncserver.so: undefined reference to `gcry_md_read&#39;<=
/div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to `=
gcry_md_get_algo_dlen&#39;</div><div>| ../libvncserver/.libs/libvncserver.s=
o:collect2: error: ld returned 1 exit status</div><div>| =C2=A0undefined re=
ference to `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/libvncserv=
er.so: undefined reference to `gcry_md_ctl&#39;</div><div>| collect2: error=
: ld returned 1 exit status</div><div>| Makefile:534: recipe for target &#3=
9;repeater&#39; failed</div><div>| make[3]: *** [repeater] Error 1</div><di=
v>| Makefile:546: recipe for target &#39;simple15&#39; failed</div><div>| m=
ake[3]: *** [simple15] Error 1</div><div>| ../libvncserver/.libs/libvncserv=
er.so: undefined reference to `gcry_md_open&#39;</div><div>| ../libvncserve=
r/.libs/libvncserver.so: undefined reference to `gcry_md_read&#39;</div><di=
v>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_=
get_algo_dlen&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undef=
ined reference to `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/lib=
vncserver.so: undefined reference to `gcry_md_ctl&#39;</div><div>| collect2=
: error: ld returned 1 exit status</div><div>| Makefile:526: recipe for tar=
get &#39;pnmshow24&#39; failed</div><div>| make[3]: *** [pnmshow24] Error 1=
</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to =
`gcry_md_open&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undef=
ined reference to `gcry_md_read&#39;</div><div>| ../libvncserver/.libs/libv=
ncserver.so: undefined reference to `gcry_md_get_algo_dlen&#39;</div><div>|=
 ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_wri=
te&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined refere=
nce to `gcry_md_ctl&#39;</div><div>| collect2: error: ld returned 1 exit st=
atus</div><div>| Makefile:498: recipe for target &#39;camera&#39; failed</d=
iv><div>| make[3]: *** [camera] Error 1</div><div>| ../libvncserver/.libs/l=
ibvncserver.so: undefined reference to `gcry_md_open&#39;</div><div>| ../li=
bvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_read&#39;=
</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to =
`gcry_md_get_algo_dlen&#39;</div><div>| ../libvncserver/.libs/libvncserver.=
so: undefined reference to `gcry_md_write&#39;</div><div>| ../libvncserver/=
.libs/libvncserver.so: undefined reference to `gcry_md_ctl&#39;</div><div>|=
 collect2: error: ld returned 1 exit status</div><div>| Makefile:490: recip=
e for target &#39;backchannel&#39; failed</div><div>| make[3]: *** [backcha=
nnel] Error 1</div><div>| ../libvncserver/.libs/libvncserver.so: undefined =
reference to `gcry_md_open&#39;</div><div>| ../libvncserver/.libs/libvncser=
ver.so: undefined reference to `gcry_md_read&#39;</div><div>| ../libvncserv=
er/.libs/libvncserver.so: undefined reference to `gcry_md_get_algo_dlen&#39=
;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to=
 `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: und=
efined reference to `gcry_md_ctl&#39;</div><div>| collect2: error: ld retur=
ned 1 exit status</div><div>| Makefile:514: recipe for target &#39;fontsel&=
#39; failed</div><div>| make[3]: *** [fontsel] Error 1</div><div>| ../libvn=
cserver/.libs/libvncserver.so: undefined reference to `gcry_md_open&#39;</d=
iv><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gc=
ry_md_read&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefine=
d reference to `gcry_md_get_algo_dlen&#39;</div><div>| ../libvncserver/.lib=
s/libvncserver.so: undefined reference to `gcry_md_write&#39;</div><div>| .=
./libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_ctl&#=
39;</div><div>| collect2: error: ld returned 1 exit status</div><div>| Make=
file:554: recipe for target &#39;vncev&#39; failed</div><div>| make[3]: ***=
 [vncev] Error 1</div><div>| ../libvncserver/.libs/libvncserver.so: undefin=
ed reference to `gcry_md_open&#39;</div><div>| ../libvncserver/.libs/libvnc=
server.so: undefined reference to `gcry_md_read&#39;</div><div>| ../libvncs=
erver/.libs/libvncserver.so: undefined reference to `gcry_md_get_algo_dlen&=
#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference=
 to `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: =
undefined reference to `gcry_md_ctl&#39;</div><div>| collect2: error: ld re=
turned 1 exit status</div><div>| Makefile:522: recipe for target &#39;pnmsh=
ow&#39; failed</div><div>| make[3]: *** [pnmshow] Error 1</div><div>| ../li=
bvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_open&#39;=
</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to =
`gcry_md_read&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undef=
ined reference to `gcry_md_get_algo_dlen&#39;</div><div>| ../libvncserver/.=
libs/libvncserver.so: undefined reference to `gcry_md_write&#39;</div><div>=
| ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_ct=
l&#39;</div><div>| collect2: error: ld returned 1 exit status</div><div>| M=
akefile:494: recipe for target &#39;blooptest&#39; failed</div><div>| make[=
3]: *** [blooptest] Error 1</div><div>| ../libvncserver/.libs/libvncserver.=
so: undefined reference to `gcry_md_open&#39;</div><div>| ../libvncserver/.=
libs/libvncserver.so: undefined reference to `gcry_md_read&#39;</div><div>|=
 ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_md_get=
_algo_dlen&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefine=
d reference to `gcry_md_write&#39;</div><div>| ../libvncserver/.libs/libvnc=
server.so: undefined reference to `gcry_md_ctl&#39;</div><div>| collect2: e=
rror: ld returned 1 exit status</div><div>| Makefile:506: recipe for target=
 &#39;example&#39; failed</div><div>| make[3]: *** [example] Error 1</div><=
div>| ../libvncserver/.libs/libvncserver.so: undefined reference to `gcry_m=
d_open&#39;</div><div>| ../libvncserver/.libs/libvncserver.so: undefined re=
ference to `gcry_md_read&#39;</div><div>| ../libvncserver/.libs/libvncserve=
r.so: undefined reference to `gcry_md_get_algo_dlen&#39;</div><div>| ../lib=
vncserver/.libs/libvncserver.so: undefined reference to `gcry_md_write&#39;=
</div><div>| ../libvncserver/.libs/libvncserver.so: undefined reference to =
`gcry_md_ctl&#39;</div><div>| collect2: error: ld returned 1 exit status</d=
iv><div>| Makefile:558: recipe for target &#39;zippy&#39; failed</div><div>=
| make[3]: *** [zippy] Error 1</div><div>| Makefile:623: recipe for target =
&#39;all-recursive&#39; failed</div><div>| make[2]: *** [all-recursive] Err=
or 1</div><div>| Makefile:540: recipe for target &#39;all-recursive&#39; fa=
iled</div><div>| make[1]: *** [all-recursive] Error 1</div><div>\| Makefile=
:387: recipe for target &#39;all&#39; failed</div><div>| make: *** [all] Er=
ror 2</div><div>| ERROR: oe_runmake failed</div><div>|</div></div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 3, 2017 =
at 5:13 PM, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"mailto:balazov=
ic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">actually thar=
e are two recpies:<div><br></div><div><a href=3D"http://framebuffer-vncserv=
er_git.bb" target=3D"_blank">framebuffer-vncserver_git.bb</a>=C2=A0<br></di=
v><div><br></div><div><span style=3D"color:rgb(36,41,46);font-family:sfmono=
-regular,consolas,&quot;liberation mono&quot;,menlo,courier,monospace;font-=
size:12px;white-space:pre-wrap">...</span></div><div><span style=3D"color:r=
gb(36,41,46);font-family:sfmono-regular,consolas,&quot;liberation mono&quot=
;,menlo,courier,monospace;font-size:12px;white-space:pre-wrap">inherit cmak=
e</span></div><div><span style=3D"color:rgb(36,41,46);font-family:sfmono-re=
gular,consolas,&quot;liberation mono&quot;,menlo,courier,monospace;font-siz=
e:12px;white-space:pre-wrap">...</span></div><div><span style=3D"color:rgb(=
36,41,46);font-family:sfmono-regular,consolas,&quot;liberation mono&quot;,m=
enlo,courier,monospace;font-size:12px;white-space:pre-wrap"><br></span></di=
v><div><a href=3D"http://libvncserver_git.bb" target=3D"_blank">libvncserve=
r_git.bb</a><span style=3D"color:rgb(36,41,46);font-family:sfmono-regular,c=
onsolas,&quot;liberation mono&quot;,menlo,courier,monospace;font-size:12px;=
white-space:pre-wrap"><br></span></div><div><br></div><div>...</div><div><s=
pan style=3D"color:rgb(36,41,46);font-family:sfmono-regular,consolas,&quot;=
liberation mono&quot;,menlo,courier,monospace;font-size:12px;white-space:pr=
e-wrap">inherit autotools</span><br></div><div>...</div><div><br></div><div=
><br></div><div>where to &quot;inherit&quot; ?</div><div>=C2=A0<br></div><d=
iv><br></div><div><br></div></div><div class=3D"HOEnZb"><div class=3D"h5"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 3, 201=
7 at 5:06 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_ex=
tra"><span><br><div class=3D"gmail_quote">On 3 March 2017 at 16:04, Peter B=
alazovic <span dir=3D"ltr">&lt;<a href=3D"mailto:balazovic.peter@gmail.com"=
 target=3D"_blank">balazovic.peter@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div>I am not successfull to include it into my i=
mage, here is a part of a log build:</div><div><br></div><div>| ../git/conf=
igure: line 13581: syntax error near unexpected token `GTK,&#39;</div><div>=
| ../git/configure: line 13581: `PKG_CHECK_MODULES(GTK, gtk+-2.0,,:)&#39;</=
div><div>| NOTE: The following config.log files may provide further informa=
tion.</div><div>| WARNING: exit code 1 from a shell command.</div><div>| NO=
TE: /mnt/work/Linux/build-fb/tmp/w<wbr>ork/aarch64-poky-linux/libvncs<wbr>e=
rver/git-r1+gitrAUTOINC+5b322<wbr>f523f/build/config.log</div><div>| ERROR:=
 configure failed</div><div>| ERROR: Function failed: do_configure (log fil=
e is located at /mnt/work/Linux//build-fb/tmp/<wbr>work/aarch64-poky-linux/=
libvnc<wbr>server/git-r1+gitrAUTOINC+5b32<wbr>2f523f/temp/log.do_configure.=
<wbr>11798)</div><div>ERROR: Task 866 (/mnt/work/Linu//sources/meta-<wbr>op=
enembedded/meta-oe/recipes-g<wbr>raphics/famebuffer-vnc/<a href=3D"http://l=
ibvncserver_git.bb" target=3D"_blank">libvncs<wbr>erver_git.bb</a>, do_conf=
igure) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Att=
empted 5407 tasks of which 5406 didn&#39;t need to be rerun and 1 failed.</=
div><div><br></div><div>Does anybode have idea where problem might be?</div=
><div></div></blockquote></div><br></span>Inherit pkgconfig in your recipe.=
</div><span class=3D"m_-7637184663355022586HOEnZb"><font color=3D"#888888">=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a114aca0ecf5d250549d5f651--
