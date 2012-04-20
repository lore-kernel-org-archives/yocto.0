Return-Path: <woailinux@hotmail.com>
Received: from blu0-omc1-s17.blu0.hotmail.com (blu0-omc1-s17.blu0.hotmail.com
	[65.55.116.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6872E00747
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 21:00:14 -0700 (PDT)
Received: from BLU0-SMTP67 ([65.55.116.7]) by blu0-omc1-s17.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 19 Apr 2012 21:00:13 -0700
X-Originating-IP: [114.255.122.12]
X-Originating-Email: [woailinux@hotmail.com]
Message-ID: <BLU0-SMTP67BD4B1E556A56E9F2564AB9220@phx.gbl>
Received: from [172.21.23.12] ([114.255.122.12]) by BLU0-SMTP67.phx.gbl over
	TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 19 Apr 2012 21:00:12 -0700
Date: Fri, 20 Apr 2012 12:00:07 +0800
From: jack <woailinux@hotmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Andy Gikling <agikling@lasx.com>
References: <23FC35CD1508674EBB20455EB700B1B4BCE885D88B@EXMBX05.mmeprod.cbeyond>
In-Reply-To: <23FC35CD1508674EBB20455EB700B1B4BCE885D88B@EXMBX05.mmeprod.cbeyond>
X-OriginalArrivalTime: 20 Apr 2012 04:00:13.0094 (UTC)
	FILETIME=[164B9C60:01CD1EAA]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure: error: C compiler cannot create executables when
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
X-List-Received-Date: Fri, 20 Apr 2012 04:00:15 -0000
Content-Type: multipart/alternative;
	boundary="------------090106000108000103000501"

--------------090106000108000103000501
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2012?04?20? 01:54, Andy Gikling wrote:
> Jack,
>
> I've been burned by this same type of issue several times during differ=
ent trial runs of the Yocto quick start and when running through the ADT =
Manual.  Here are a few things to try / things I've done wrong in the pas=
t / common pitfalls:
>
> 1.  Be very sure your tool chain is correct for your target.  You need =
to know if you are "cross compiling" or not!  Look up what that means if =
you are unfamiliar.  For example, if you have 32Bit host and a 64bit targ=
et the pre-built toolchain you should download is "poky-eglibc-i686-x86_6=
4-toolchain-gmae-1.1.1.tar.bz2" - these premade toolchains can be found a=
t http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/=

> As another example, if you are trying to run the quick start with qemux=
86 as the target emulator you should get "poky-eglibc-i686-i586-toolchain=
-gmae-1.1.1.tar.bz2" from the above site.  Or see the ADT Manual for deta=
ils on other ways to get and configure your build tools.
>
> 2.  Once you get a toolchain, make sure it's contents end up in /opt/po=
ky/version/ folder where version is the Yocto version your using.  v1.1.1=
 is the latest and 1.2 is coming soon.  It is important to know what vers=
ion of Yocto you are trying to use! (Obviously... but note in the steps b=
elow that it's easy to get the wrong version of the Eclipse plugin for Yo=
cto.)
>
> 3.  When downloading the Eclipse Yocto plugin I have found it's easiest=
 to simply download the ...archive.zip version of the Yocto v1.1.1 plugin=
 from this address: http://downloads.yoctoproject.org/releases/yocto/yoct=
o-1.1.1/eclipse-plugin/indigo/ - then in Eclipse, when adding that plugin=
, don't enter a software site address, simply click the "Archive" button =
(the dialog will look for a .zip file) then point at the plugin's .zip fi=
le you download.
>
> 4.  It's easy to miss the step in the ADT manual about how to configure=
 the Yocto plugin once you've installed it.  (Also make sure you've corre=
ctly installed all the other add-on software described in the Eclipse set=
up procedure at the end of the ADT manual.  Note the WinCE software on th=
at list doesn't seem to ever install correctly.  I haven't needed it thou=
gh - should be able to skip it.)  The ADT Manual tell you to go to Window=
->Preferences and you'll see the Yocto ADT settings on the bottom of the =
column on the left.  You should chose Standalone pre-built tollchain if y=
ou downloaded it like I described above.  "Toolchain Root Location" shoul=
d be "/opt/poky/1.1.1" and "Sysroot Location" should be "/opt/poky/1.1.1/=
targetSysrootFolder" where targetSysrootFolder will change depending on w=
hat toolchain you've downloaded.  This is supposed to be a folder that mi=
mic's what's going to be available on the target when the software you're=
 developing is running there.  It includes headers, libraries etc...  Poi=
nting at the right sysroot location is very important.  It will own you i=
f you don't!
>
> 5.  There's a nice 1 liner in the quick start manual after you've opene=
d a new hello world template that's easily missed!  One you've open your =
Yocto hello world template you need to run the autotools, but this is not=
 supposed to be done from the command line.  If your Yocto ADT plugin is =
setup correctly, and you've selected the new hello world project in Eclip=
se's Project Explorer, you will be able to get to the menu option Project=
->Reconfigure Project.  This runs the autotools for you.  In the console =
you should see that this completed successfully.  Once it's completed suc=
cessfully, you should see a Makefile in hello world's /src/ folder.  It w=
as not there before and was generated by calling Reconfigure Project.  No=
w you should be able to right click your project and build it.
>
> Hope this helps!  Let us know.
>
> ~Andy Gikling
> LasX Industries Inc.
>
>
>
>
Hi, Andy! Thank you very very much for your help. I have found where the =

error is. Just as you describe in your 4th tip. My "Sysroot Location"=20
was uncorrect. After correcting the sysroot location and creating a new=20
"hello world" template project,  it works. Besides, your 3rd tip is also =

useful. When installing eclipse-plugin, I installing the Plug-in as New=20
Software and  it took me much time to solve the problem:"=20
|http://downloads.yoctoproject.org/releases/eclipse-plugin/1.1.1|" not=20
exist. But your method is very easy, thx!

jack

--------------090106000108000103000501
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 2012&#24180;04&#26376;20&#26085; 01:54, Andy Gikling wrote:
    <blockquote
cite="mid:23FC35CD1508674EBB20455EB700B1B4BCE885D88B@EXMBX05.mmeprod.cbeyond"
      type="cite">
      <pre wrap="">Jack,

I've been burned by this same type of issue several times during different trial runs of the Yocto quick start and when running through the ADT Manual.  Here are a few things to try / things I've done wrong in the past / common pitfalls:

1.  Be very sure your tool chain is correct for your target.  You need to know if you are "cross compiling" or not!  Look up what that means if you are unfamiliar.  For example, if you have 32Bit host and a 64bit target the pre-built toolchain you should download is "poky-eglibc-i686-x86_64-toolchain-gmae-1.1.1.tar.bz2" - these premade toolchains can be found at <a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/">http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/toolchain/</a>
As another example, if you are trying to run the quick start with qemux86 as the target emulator you should get "poky-eglibc-i686-i586-toolchain-gmae-1.1.1.tar.bz2" from the above site.  Or see the ADT Manual for details on other ways to get and configure your build tools.

2.  Once you get a toolchain, make sure it's contents end up in /opt/poky/version/ folder where version is the Yocto version your using.  v1.1.1 is the latest and 1.2 is coming soon.  It is important to know what version of Yocto you are trying to use! (Obviously... but note in the steps below that it's easy to get the wrong version of the Eclipse plugin for Yocto.)

3.  When downloading the Eclipse Yocto plugin I have found it's easiest to simply download the ...archive.zip version of the Yocto v1.1.1 plugin from this address: <a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo/">http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.1/eclipse-plugin/indigo/</a> - then in Eclipse, when adding that plugin, don't enter a software site address, simply click the "Archive" button (the dialog will look for a .zip file) then point at the plugin's .zip file you download.

4.  It's easy to miss the step in the ADT manual about how to configure the Yocto plugin once you've installed it.  (Also make sure you've correctly installed all the other add-on software described in the Eclipse setup procedure at the end of the ADT manual.  Note the WinCE software on that list doesn't seem to ever install correctly.  I haven't needed it though - should be able to skip it.)  The ADT Manual tell you to go to Window-&gt;Preferences and you'll see the Yocto ADT settings on the bottom of the column on the left.  You should chose Standalone pre-built tollchain if you downloaded it like I described above.  "Toolchain Root Location" should be "/opt/poky/1.1.1" and "Sysroot Location" should be "/opt/poky/1.1.1/targetSysrootFolder" where targetSysrootFolder will change depending on what toolchain you've downloaded.  This is supposed to be a folder that mimic's what's going to be available on the target when the software you're developing is running there.  It includ
es headers, libraries etc...  Pointing at the right sysroot location is very important.  It will own you if you don't!

5.  There's a nice 1 liner in the quick start manual after you've opened a new hello world template that's easily missed!  One you've open your Yocto hello world template you need to run the autotools, but this is not supposed to be done from the command line.  If your Yocto ADT plugin is setup correctly, and you've selected the new hello world project in Eclipse's Project Explorer, you will be able to get to the menu option Project-&gt;Reconfigure Project.  This runs the autotools for you.  In the console you should see that this completed successfully.  Once it's completed successfully, you should see a Makefile in hello world's /src/ folder.  It was not there before and was generated by calling Reconfigure Project.  Now you should be able to right click your project and build it.

Hope this helps!  Let us know.

~Andy Gikling
LasX Industries Inc. 
 



</pre>
    </blockquote>
    Hi, Andy! Thank you very very much for your help. I have found where
    the error is. Just as you describe in your 4th tip. My "Sysroot
    Location" was uncorrect. After correcting the sysroot location and
    creating a new "hello world" template project,&nbsp; it works. Besides,
    your 3rd tip is also useful. When installing eclipse-plugin, I
    installing the Plug-in as New Software and&nbsp; it took me much time to
    solve the problem:" <code class="filename"><a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/eclipse-plugin/1.1.1">http://downloads.yoctoproject.org/releases/eclipse-plugin/1.1.1</a></code>"
    not exist. But your method is very easy, thx!<br>
    <br>
    jack<br>
  </body>
</html>

--------------090106000108000103000501--
