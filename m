Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95AFCE0076F; Tue, 10 Mar 2015 23:54:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 091B6E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 23:53:57 -0700 (PDT)
X-Halon-ID: 5fc29f76-c7bb-11e4-9958-0050569116f7
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed, 11 Mar 2015 07:53:50 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 11 Mar 2015 07:53:53 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>, <schnitzeltony@googlemail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CALbNGRRjEJ+ini-vNningcS1BAXKVvmWKKhwSbWRyUC2_zbj=A@mail.gmail.com>
References: <cover.1424450237.git.petter@technux.se>
	<20150301001450.GC22308@gmail.com>
	<CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
	<54FE098E.5020701@mlbassoc.com>
	<CALbNGRQ32k1jxRuNNOYUP+Aj-syQHyYoO81hMaL7dHzE1MgcfQ@mail.gmail.com>
	<54FE0E5A.9040400@mlbassoc.com>
	<CALbNGRRjEJ+ini-vNningcS1BAXKVvmWKKhwSbWRyUC2_zbj=A@mail.gmail.com>
Message-ID: <630ff0d7c9593b5d339fd652eeb887ab@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Mar 2015 06:54:01 -0000
Content-Type: multipart/alternative;
	boundary="=_5dd9b4f95d5bb0bf89fc7b1a5b134353"

--=_5dd9b4f95d5bb0bf89fc7b1a5b134353
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

I have created a new ticket for the raspberrypi2 problem:
http://redmine.gherzan.com/issues/52 

For the raspberrypi problem I
cannot reproduce this problem. For me it looks good using below
revisions for poky and meta-raspberrypi: 

meta-raspberrypi: 57c8e6b
rpi-base.inc: Include the RPI2 DTB 

poky: 0aff275 layer.conf: bump
version as error-report interface changed 

Andreas: Can you please
specify revisions you are using for poky and meta-raspberrypi? Would be
great if you also can mail me log.do_fetch and log.do_patch (if such
exists I understand it as it bails at do_fetch form your mail..) found
in:


<yourproject>/tmp/work/raspberrypi-poky-linux-gnueabi/xserver-xf86-config/0.1-*/temp/
as well.. 

BR, Petter 

2015-03-09 22:24 skrev Andreas Müller: 

> On
Mon, Mar 9, 2015 at 10:19 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>

>> On 2015-03-09 15:07, Andreas Müller wrote: 
>> 
>>> On Mon, Mar 9,
2015 at 9:58 PM, Gary Thomas <gary@mlbassoc.com> wrote: 
>>> 
>>>> On
2015-03-09 14:50, Andreas Müller wrote: 
>>>> 
>>>>> On Sun, Mar 1, 2015
at 1:14 AM, Andrei Gherzan <andrei@gherzan.ro> wrote: 
>>>>> 
>>>>>>
Hello, On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mabäcker wrote:

>>>>>> 
>>>>>>> The following changes since commit
d8bf60ce6c4a6c6371527c6df2e3243d2771c0cc: README: Github repo changed
(2015-02-14 02:00:57 +0100) are available in the git repository at:
git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_layer_prio
[1] Petter Mabäcker (1): layer.conf: set high layer priority
conf/layer.conf | 2 +- 1 file changed, 1 insertion(+), 1
deletion(-)
>>>>>> Patch merged to master. Thanks Petter. -- Andrei
Gherzan --
>>>>> This one breaks xserver-xf86-config for me | Function
failed: Fetcher failure for URL: 'file://xorg.conf.d/10-evdev.conf [2]'.
Unable to fetch URL from any source.
>>>> Are you trying to build for
the RaspberryPi2? I [temporarily] fixed this by copying the missing
files. In the meta-raspberrypi layer, do % rsync -a
recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi{/,2}
>>>
ctoproject.org/listinfo/yocto I checked both (I have simply copied
xserver-xf86-config files for rpi2). Increasing Layer priority above 7
fails for me - have no idea why. What should this patch
solve/enhance?
>> That command will let bitbake find the missing file:
recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi2/
recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi2/xorg.conf.d
recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi2/xorg.conf.d/10-evdev.conf
recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi2/xorg.conf
With this I was able to build for the rpi2. Too bad Newark hasn't
delivered mine yet (although it was promised 10 days ago...)
> 
> To
avoid misunderstandings: The problem came up (for me) by increasing
>
layer priority and affects raspberrypi (I know files are missing for
>
raspberrypi2)
> 
> Andreas
 

Links:
------
[1]
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_layer_prio
[2]
file://xorg.conf.d/10-evdev.conf

--=_5dd9b4f95d5bb0bf89fc7b1a5b134353
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>I have created a new ticket for the raspberrypi2 problem: http://redmine=
=2Egherzan.com/issues/52</p>
<p>For the raspberrypi problem I cannot reproduce this problem. For me it l=
ooks good using below revisions for poky and meta-raspberrypi:</p>
<p>meta-raspberrypi: 57c8e6b rpi-base.inc: Include the RPI2 DTB</p>
<p>poky: 0aff275 layer.conf: bump version as error-report interface changed=
</p>
<p>&nbsp;</p>
<p>Andreas: Can you please specify revisions you are using for poky and met=
a-raspberrypi? Would be great if you also can mail me log.do_fetch and log=
=2Edo_patch (if such exists I understand it as it bails at do_fetch form yo=
ur mail..) found in:</p>
<p>&lt;yourproject&gt;/tmp/work/raspberrypi-poky-linux-gnueabi/xserver-xf86=
-config/0.1-*/temp/ as well..</p>
<p>&nbsp;</p>
<p>BR, Petter</p>
<p>&nbsp;</p>
<p>2015-03-09 22:24 skrev Andreas M&uuml;ller:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Mon, Mar 9, 2015 at 10:19 PM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On 2015-03-09 15:07, Andreas M&uuml;l=
ler wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Mon, Mar 9, 2015 at 9:58 PM, Gary =
Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; w=
rote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On 2015-03-09 14:50, Andreas M&uuml;l=
ler wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Sun, Mar 1, 2015 at 1:14 AM, Andre=
i Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt=
; wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">Hello, On Fri, Feb 20, 2015 at 05:40:=
21PM +0100, Petter Mab&auml;cker wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">The following changes since commit d8=
bf60ce6c4a6c6371527c6df2e3243d2771c0cc: README: Github repo changed (2015-0=
2-14 02:00:57 +0100) are available in the git repository at: git://git.yoct=
oproject.org/poky-contrib petmab/rpi_layer_prio <a href=3D"http://git.yocto=
project.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_layer_prio">http://gi=
t.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_layer_prio</a>=
 Petter Mab&auml;cker (1): layer.conf: set high layer priority conf/layer=
=2Econf | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)</blockquote>
Patch merged to master. Thanks Petter. -- Andrei Gherzan --</blockquote>
This one breaks xserver-xf86-config for me | Function failed: Fetcher failu=
re for URL: '<a href=3D"file://xorg.conf.d/10-evdev.conf">file://xorg.conf=
=2Ed/10-evdev.conf</a>'. Unable to fetch URL from any source.</blockquote>
Are you trying to build for the RaspberryPi2? I [temporarily] fixed this by=
 copying the missing files. In the meta-raspberrypi layer, do % rsync -a re=
cipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi{/,2}</blockquot=
e>
ctoproject.org/listinfo/yocto I checked both (I have simply copied xserver-=
xf86-config files for rpi2). Increasing Layer priority above 7 fails for me=
 - have no idea why. What should this patch solve/enhance?</blockquote>
That command will let bitbake find the missing file: recipes-graphics/xorg-=
xserver/xserver-xf86-config/raspberrypi2/ recipes-graphics/xorg-xserver/xse=
rver-xf86-config/raspberrypi2/xorg.conf.d recipes-graphics/xorg-xserver/xse=
rver-xf86-config/raspberrypi2/xorg.conf.d/10-evdev.conf recipes-graphics/xo=
rg-xserver/xserver-xf86-config/raspberrypi2/xorg.conf With this I was able =
to build for the rpi2. Too bad Newark hasn't delivered mine yet (although i=
t was promised 10 days ago...)</blockquote>
<pre>To avoid misunderstandings: The problem came up (for me) by increasing
layer priority and affects raspberrypi (I know files are missing for
raspberrypi2)

Andreas</pre>
</blockquote>
</body></html>

--=_5dd9b4f95d5bb0bf89fc7b1a5b134353--
