Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E297E00A38; Thu,  3 May 2018 11:47:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F72E00994
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 11:47:26 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id m16-v6so24210567qtg.13
	for <yocto@yoctoproject.org>; Thu, 03 May 2018 11:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=V4nSbfSPZ3A6+TXWEAYNE/GAij+v0ljBEcH+JayOJYY=;
	b=fTMJFKRUX/da9dSLPxkTqMr18NOiViISfoyYay2JZ3Sq9N5Maw3X3hJRtcHAJ40cYV
	XcE3LqhR+V/WCq9i/C1en3KpbZZ+oXPn0/9bL0fkImBOhRgeoBqBLPXymRdvxy+DQcOM
	Tz3wgCPDBiHW7RKenczeFHN7irNN4jK//CnChHekPdR++8lrdtnC0EidmRJTCl+rtGpL
	5jbjd33TDvSj9v17bVEo3jDvIAvAguwup5hUVR0RKDfFpyocDI9MBUO0pmuwhx5MpAtX
	//IzknyLXo/4aDshSS0bH3TgFovw11UyrY2H8Mv0p6nesyTxuQUtoqKCadAMU9sb31DZ
	9nBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=V4nSbfSPZ3A6+TXWEAYNE/GAij+v0ljBEcH+JayOJYY=;
	b=c25TCDZ5OjymVd/c81+bc0LOMZRFSx3SpBvNCx05ZaSe4ty6m3kaTEwIHHGfWk49kz
	9vpqNz1krleXXsIDch1DxF3BY5Z3iEXOApEsuhzJ8k39Wl1WfP7GTUGrwJdJ7ttJIdFW
	che5vJPJ0T/j/4m6v4X3aeQuEVtzq0R2e2R8d7FBpdjFM8D1tG8D/4BIRpUl5ZsSZKpc
	bZNQhV1NXcfIIE+fOttqZSY4eZIQhz4PpXFbWXc3LpZ7woQ0sfj3g9MaFjCq3btCUJQ8
	lvdtOXtuC6jEST47SNXPbcRtHx8ULXetfz6TgOuu2KMnL7mJ2iPqUCJDTFpFxq264oax
	SyrA==
X-Gm-Message-State: ALQs6tDsxnQFcc5IpXvYp8roImWyXEa8EAi6z5KLtI0mMaV2ttd+rDDG
	vh2eUTBkbPPH/5bRXxINl1cbNO8qij5vKTkPPIc=
X-Google-Smtp-Source: AB8JxZrkSgwNpXuQpd3eORFSx8NCf6mKM/foQebVCmwj6qfxWEjX7CBXuuODVMBaCqpEK3PNhxcmiVBIzJDirqOT3WE=
X-Received: by 2002:aed:222b:: with SMTP id
	n40-v6mr20871146qtc.146.1525373246039; 
	Thu, 03 May 2018 11:47:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Thu, 3 May 2018 11:47:25 -0700 (PDT)
In-Reply-To: <CAJTo0LaWnAgFiGZLg9MjMjitahqEi9n5Ptw0SrTETOzyfSccPw@mail.gmail.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
	<MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LaWnAgFiGZLg9MjMjitahqEi9n5Ptw0SrTETOzyfSccPw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 3 May 2018 20:47:25 +0200
Message-ID: <CAGAf8LzF70hcZZ=WPOKft59U0j4sxkX=dPYTsk3JtwJUKNSKDA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Raymond Yeung <rksyeung@hotmail.com>
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Thu, 03 May 2018 18:47:28 -0000
Content-Type: multipart/alternative; boundary="0000000000007aec0e056b51a2fa"

--0000000000007aec0e056b51a2fa
Content-Type: text/plain; charset="UTF-8"

Hello Ross,

Seems that you are correct. I have checked on my host Fedora 27:

[vuser@localhost bin]$ pwd
/usr/bin
[vuser@localhost bin]$ uname -r
4.16.5-200.fc27.x86_64
[vuser@localhost bin]$ ls -al pyth*
lrwxrwxrwx. 1 root root     7 Mar 14 14:36 python -> python2
lrwxrwxrwx. 1 root root     9 Mar 14 14:36 python2 -> python2.7
-rwxr-xr-x. 1 root root  7128 Mar 14 14:37 python2.7
lrwxrwxrwx. 1 root root     9 Apr  4 17:03 python3 -> python3.6
-rwxr-xr-x. 2 root root 11240 Apr  4 17:03 python3.6
-rwxr-xr-x. 2 root root 11240 Apr  4 17:03 python3.6m
-rwxr-xr-x. 1 root root   388 Jul 28  2017 python3-chardetect
-rwxr-xr-x. 1 root root   387 Nov 16 18:05 python3-coverage
-rwxr-xr-x. 1 root root   396 Jul 28  2017 python3-mako-render
-rwxr-xr-x. 1 root root   392 Jul 28  2017 python3-pyinotify
[vuser@localhost bin]$

I also have checked on my Debian 9.4.0 VM:

user@unassigned-hostname:/usr/bin$ pwd
/usr/bin
user@unassigned-hostname:/usr/bin$ uname -r
4.9.0-6-amd64
user@unassigned-hostname:/usr/bin$ ls -al pyth*
lrwxrwxrwx 1 root root       9 May  3 11:03 python -> python2.7
lrwxrwxrwx 1 root root       9 May  3 11:03 python2 -> python2.7
-rwxr-xr-x 1 root root 3779512 Nov 24 12:33 python2.7
lrwxrwxrwx 1 root root       9 May  3 11:03 python3 -> python3.5
-rwxr-xr-x 2 root root 4747120 Jan 19  2017 python3.5
-rwxr-xr-x 2 root root 4747120 Jan 19  2017 python3.5m
lrwxrwxrwx 1 root root      10 May  3 11:03 python3m -> python3.5m
user@unassigned-hostname:/usr/bin$

Zoran
_______


On Thu, May 3, 2018 at 6:00 PM, Burton, Ross <ross.burton@intel.com> wrote:

> I suggest you have a look through the feed that you link to and see if it
> provides a package which has /usr/bin/python3 in, and if it doesn't then
> just make a python3 -> python3.6 symlink (which is all you need).
>
> Ross
>
> On 2 May 2018 at 20:28, Raymond Yeung <rksyeung@hotmail.com> wrote:
>
>> Thanks Zoran.
>>
>>
>> My Linux build machine uses Centos 7.  I thought I'd done the
>> installation to Python 3.6.5.  If this is not Python3 > 3.4.0, then I'm
>> confused.  The link I follow for installation is here:
>> https://janikarhunen.fi/how-to-install-python-3-6-1-on-centos-7.html
>>
>> > python3.6 -V
>>
>> Python 3.6.5
>>
>> >python -V
>>
>> Python 2.7.5
>>
>>
>> Anyway, I realize what went wrong.  I'd Krogoth (a 2016 Poky) running
>> before.  Now as I'm migrating to Rocko (a 2017 Poky), I try to solve a
>> Python versioning issue by installing Python only (as above).  However,
>> there may be other packages I need to update.  After getting latest
>> Reference Manual, download and install latest environment, I no longer have
>> python3 issue.  However, the Python version of why Python3.6 won't satisfy
>> Python > 3.4.0 still puzzles me (though no longer blocking me).
>>
>>
>> Raymond
>>
>>
>> ------------------------------
>> *From:* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
>> *Sent:* Tuesday, May 1, 2018 11:19 PM
>> *To:* Raymond Yeung
>> *Cc:* yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Problem with Python when running oe-init-build-env
>>
>> Hello Raymond,
>>
>> The problem is that you (talking about your host distro):
>> [1] Do NOT have python3 package installed;
>> [2] Do have python3 package < 3.4.0 version, so you need to upgrade!
>>
>> So, I have no idea which host distro you are using, but:
>> [1] If Debian/Ubuntu, then: apt-get install python3
>>      If Fedora, then dnf install python3
>> [2] If Debian/Ubuntu, then: apt-get update python3
>>      If Fedora, then dnf update python3
>>
>> Hope this helps,
>> Zoran
>> _______
>>
>> On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung <rksyeung@hotmail.com>
>> wrote:
>> > I'd just git cloned Rocko and meta-ti.  When I try to source
>> > oe-init-build-env, I got errors:
>> >
>> >
>> > -bash: python3: command not found
>> >
>> > BitBake requires Python 3.4.0 or later as 'python3'.  "python -V" gives
>> > "Python 2.7.9".  "python3" is not in $PATH.  I'd followed some detailed
>> > online description to install Python 3.6 on CentOS 7.  However, after
>> > installation, it looks like I need to invoke it with python3.6.
>> >
>> >
>> > How does this work now?  I suppose the oe-init-build-env script
>> uses/expects
>> > python3, not python3.6.
>> >
>> >
>> > Any insight?
>> >
>> >
>> > Raymond
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
>> lists.yoctoproject.org
>> Discussion of all things about the Yocto Project. Read our Community
>> Guidelines or learn more about how to participate in other community
>> discussions. Subscribe before posting to bypass moderation.
>>
>>
>> >
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--0000000000007aec0e056b51a2fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello Ross,<br><br></div>Seems that you are corr=
ect. I have checked on my host Fedora 27:<br><br>[vuser@localhost bin]$ pwd=
<br>/usr/bin<br>[vuser@localhost bin]$ uname -r<br>4.16.5-200.fc27.x86_64<b=
r>[vuser@localhost bin]$ ls -al pyth*<br>lrwxrwxrwx. 1 root root=C2=A0=C2=
=A0=C2=A0=C2=A0 7 Mar 14 14:36 python -&gt; python2<br>lrwxrwxrwx. 1 root r=
oot=C2=A0=C2=A0=C2=A0=C2=A0 9 Mar 14 14:36 python2 -&gt; python2.7<br>-rwxr=
-xr-x. 1 root root=C2=A0 7128 Mar 14 14:37 python2.7<br>lrwxrwxrwx. 1 root =
root=C2=A0=C2=A0=C2=A0=C2=A0 9 Apr=C2=A0 4 17:03 python3 -&gt; python3.6<br=
>-rwxr-xr-x. 2 root root 11240 Apr=C2=A0 4 17:03 python3.6<br>-rwxr-xr-x. 2=
 root root 11240 Apr=C2=A0 4 17:03 python3.6m<br>-rwxr-xr-x. 1 root root=C2=
=A0=C2=A0 388 Jul 28=C2=A0 2017 python3-chardetect<br>-rwxr-xr-x. 1 root ro=
ot=C2=A0=C2=A0 387 Nov 16 18:05 python3-coverage<br>-rwxr-xr-x. 1 root root=
=C2=A0=C2=A0 396 Jul 28=C2=A0 2017 python3-mako-render<br>-rwxr-xr-x. 1 roo=
t root=C2=A0=C2=A0 392 Jul 28=C2=A0 2017 python3-pyinotify<br>[vuser@localh=
ost bin]$<br><br></div><div>I also have checked on my Debian 9.4.0 VM:<br><=
br>user@unassigned-hostname:/usr/<wbr>bin$ pwd<br>/usr/bin<br>user@unassign=
ed-hostname:/usr/<wbr>bin$ uname -r<br>4.9.0-6-amd64<br>user@unassigned-hos=
tname:/usr/<wbr>bin$ ls -al pyth*<br>lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 9 May=C2=A0 3 11:03 python -&gt; python2.7<br>lrwxrwx=
rwx 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9 May=C2=A0 3 11:03 pyt=
hon2 -&gt; python2.7<br>-rwxr-xr-x 1 root root 3779512 Nov 24 12:33 python2=
.7<br>lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9 May=C2=
=A0 3 11:03 python3 -&gt; python3.5<br>-rwxr-xr-x 2 root root 4747120 Jan 1=
9=C2=A0 2017 python3.5<br>-rwxr-xr-x 2 root root 4747120 Jan 19=C2=A0 2017 =
python3.5m<br>lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10 May=
=C2=A0 3 11:03 python3m -&gt; python3.5m<br>user@unassigned-hostname:/usr/<=
wbr>bin$<br><br></div><div>Zoran<br>_______<br></div><div><br></div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, May 3, 201=
8 at 6:00 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I suggest you have a l=
ook through the feed that you link to and see if it provides a package whic=
h has /usr/bin/python3 in, and if it doesn&#39;t then just make a python3 -=
&gt; python3.6 symlink (which is all you need).<span class=3D"HOEnZb"><font=
 color=3D"#888888"><div><br></div><div>Ross</div></font></span></div><div c=
lass=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 2 May 2018 at 20:28, Raymond Yeung <span dir=3D"ltr">&l=
t;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank">rksyeung@hotmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_4255108367079081674m_-6613158871024243400divtagdefaultwrapper"=
 style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,san=
s-serif,Helvetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&qu=
ot;,EmojiSymbols" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Zoran.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My Linux build machine uses Cento=
s 7.=C2=A0 I thought I&#39;d done the installation to Python 3.6.5.=C2=A0 I=
f this is not Python3 &gt; 3.4.0, then I&#39;m confused.=C2=A0 The link I f=
ollow for installation is here: =C2=A0<a href=3D"https://janikarhunen.fi/ho=
w-to-install-python-3-6-1-on-centos-7.html" class=3D"m_4255108367079081674m=
_-6613158871024243400OWAAutoLink" id=3D"m_4255108367079081674m_-66131588710=
24243400LPlnk623282" target=3D"_blank">https://janikarhunen.fi/how-t<wbr>o-=
install-python-3-6-1-on-cent<wbr>os-7.html</a></p>
<br>
<p style=3D"margin-top:0;margin-bottom:0">&gt;<span style=3D"font-size:12pt=
">=C2=A0python3.6 -V</span></p>
<p>Python 3.6.5</p>
<p>&gt;<span style=3D"font-size:12pt">python -V</span></p>
<p>Python 2.7.5</p>
<p><br>
</p>
<p>Anyway, I realize what went wrong.=C2=A0 I&#39;d Krogoth (a 2016 Poky) r=
unning before.=C2=A0 Now as I&#39;m migrating to Rocko (a 2017 Poky), I try=
=C2=A0to solve a Python versioning issue by installing Python only (as abov=
e).=C2=A0 However, there may be other packages I need to update.
 =C2=A0After getting latest Reference Manual, download and install latest e=
nvironment, I no longer have python3 issue.=C2=A0 However, the Python versi=
on of why Python3.6 won&#39;t satisfy Python &gt; 3.4.0 still puzzles me (t=
hough no longer blocking me).</p>
<p></p>
<p><br>
</p>
<p>Raymond</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_4255108367079081674m_-6613158871024243400divRplyFwdMsg" dir=3D=
"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"=
#000000"><b>From:</b> Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojs=
avljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><wbr=
>&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 11:19 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Problem with Python when running oe-init-build-=
env</font>
<div>=C2=A0</div>
</div>
<div class=3D"m_4255108367079081674m_-6613158871024243400BodyFragment"><fon=
t size=3D"2"><span style=3D"font-size:11pt">
<div class=3D"m_4255108367079081674m_-6613158871024243400PlainText">Hello R=
aymond,<br>
<br>
The problem is that you (talking about your host distro):<br>
[1] Do NOT have python3 package installed;<br>
[2] Do have python3 package &lt; 3.4.0 version, so you need to upgrade!<br>
<br>
So, I have no idea which host distro you are using, but:<br>
[1] If Debian/Ubuntu, then: apt-get install python3<br>
=C2=A0=C2=A0=C2=A0=C2=A0 If Fedora, then dnf install python3<br>
[2] If Debian/Ubuntu, then: apt-get update python3<br>
=C2=A0=C2=A0=C2=A0=C2=A0 If Fedora, then dnf update python3<br>
<br>
Hope this helps,<br>
Zoran<br>
_______<br>
<br>
On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung &lt;<a href=3D"mailto:rksyeu=
ng@hotmail.com" target=3D"_blank">rksyeung@hotmail.com</a>&gt; wrote:<br>
&gt; I&#39;d just git cloned Rocko and meta-ti.=C2=A0 When I try to source<=
br>
&gt; oe-init-build-env, I got errors:<br>
&gt;<br>
&gt;<br>
&gt; -bash: python3: command not found<br>
&gt;<br>
&gt; BitBake requires Python 3.4.0 or later as &#39;python3&#39;.=C2=A0 &qu=
ot;python -V&quot; gives<br>
&gt; &quot;Python 2.7.9&quot;.=C2=A0 &quot;python3&quot; is not in $PATH.=
=C2=A0 I&#39;d followed some detailed<br>
&gt; online description to install Python 3.6 on CentOS 7.=C2=A0 However, a=
fter<br>
&gt; installation, it looks like I need to invoke it with python3.6.<br>
&gt;<br>
&gt;<br>
&gt; How does this work now?=C2=A0 I suppose the oe-init-build-env script u=
ses/expects<br>
&gt; python3, not python3.6.<br>
&gt;<br>
&gt;<br>
&gt; Any insight?<br>
&gt;<br>
&gt;<br>
&gt; Raymond<br>
&gt;<span class=3D"m_4255108367079081674HOEnZb"><font color=3D"#888888"><br=
>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_4255=
108367079081674m_-6613158871024243400LPlnk894811" class=3D"m_42551083670790=
81674m_-6613158871024243400OWAAutoLink" target=3D"_blank">
https://lists.yoctoproject.org<wbr>/listinfo/yocto</a>
<div id=3D"m_4255108367079081674m_-6613158871024243400LPBorder_GT_152527670=
47480.9353307514330218" style=3D"margin-bottom:20px;overflow:auto;width:100=
%;text-indent:0px">
<table id=3D"m_4255108367079081674m_-6613158871024243400LPContainer_1525276=
7047450.0060050600858457814" style=3D"width:90%;background-color:rgb(255,25=
5,255);overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px;b=
order-top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,20=
0);border-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:r=
gb(200,200,200)" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td id=3D"m_4255108367079081674m_-6613158871024243400TextCell_1525276704747=
0.3908343845028899" colspan=3D"2" style=3D"vertical-align:top;padding:0px;d=
isplay:table-cell">
<div id=3D"m_4255108367079081674m_-6613158871024243400LPRemovePreviewContai=
ner_15252767047470.4155838622579563"></div>
<div id=3D"m_4255108367079081674m_-6613158871024243400LPTitle_1525276704747=
0.2926955628645245" style=3D"color:rgb(0,120,215);font-weight:normal;font-s=
ize:21px;font-family:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Seg=
oe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sa=
ns-serif;line-height:21px">
<a id=3D"m_4255108367079081674m_-6613158871024243400LPUrlAnchor_15252767047=
470.2327548529833663" href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" style=3D"text-decoration:none" target=3D"_blank">yocto Info Page</a></div=
>
<div id=3D"m_4255108367079081674m_-6613158871024243400LPMetadata_1525276704=
7470.16915804322735695" style=3D"margin:10px 0px 16px;color:rgb(102,102,102=
);font-weight:normal;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&q=
uot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:14px;line-height:14px"=
>
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"m_4255108367079081674m_-6613158871024243400LPDescription_1525276=
7047480.7820393102064364" style=3D"display:block;color:rgb(102,102,102);fon=
t-weight:normal;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;S=
egoe WP&quot;,Tahoma,Arial,sans-serif;font-size:14px;line-height:20px;max-h=
eight:100px;overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</font></span></div>
</span></font></div>
</div>
</div>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--0000000000007aec0e056b51a2fa--
