Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C0A4E008F5; Sun, 28 May 2017 06:10:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cloudserver096301.home.net.pl (cloudserver096301.home.net.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80A44E00724
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 06:10:15 -0700 (PDT)
Received: from 87-207-30-9.dynamic.chello.pl (87.207.30.9) (HELO
	[192.168.0.213])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer 0.82)
	id 9bd98c2d2ac6afe8; Sun, 28 May 2017 15:10:17 +0200
To: yocto@yoctoproject.org
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <c019e09f-6f64-f37d-b69c-85196b044a47@3mdeb.com>
Date: Sun, 28 May 2017 15:10:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Cc: =?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>,
	Mariusz Madej <mariuszmadej84@gmail.com>
Subject: Cannot load Gtk3: Could not lookup GType
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
X-List-Received-Date: Sun, 28 May 2017 13:10:19 -0000
Content-Type: multipart/alternative;
	boundary="------------15473CD141589ABAFF9372CC"
Content-Language: en-US

--------------15473CD141589ABAFF9372CC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I'm trying to port custom perl application from Debian into Yocto (morty).
I'm stuck at testing Gtk3 perl module. It looks to me that all necessary
components are already there. It looks to me that the issue is rather 
related
to Gtk3 or it's dependencies, rather than perl and it's modules. What do 
you think?
I'm certainly not a Gtk expert. Do you have any idea how could I further 
debug
this? Any hints what could be the issue?

```
root@qemux86-64:~/Gtk3-0.009# perl Makefile.PL
Checking if your kit is complete...
Looks good
Generating a Unix-style Makefile
Writing Makefile for Gtk3
Writing MYMETA.yml and MYMETA.json

root@qemux86-64:~/Gtk3-0.009# make
cp lib/Gtk3.pm blib/lib/Gtk3.pm

root@qemux86-64:~/Gtk3-0.009# make
Skip blib/lib/Gtk3.pm (unchanged)
root@qemux86-64:~/Gtk3-0.009# make test
PERL_DL_NONLAZY=1 "/usr/bin/perl5.22.1" "-MExtUtils::Command::MM" 
"-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness(0, 
'blib/lib', 'blib/arch')" t/*.t
t/00-init.t .................... Bailout called.  Further testing 
stopped:  Cannot load Gtk3: Could not lookup GType from function 
gdk_rectangle_get_type at t/00-init.t line 9.
FAILED--Further testing stopped: Cannot load Gtk3: Could not lookup 
GType from function gdk_rectangle_get_type at t/00-init.t line 9.
make: *** [Makefile:814: test_dynamic] Error 255
```

I'm running in qemu right now. My setup is:

* Perl verion: This is perl 5, version 22, subversion 1 (v5.22.1) built 
for x86_64-linux
* Relevant libraries:
libcairo-gobject.so.2.11400.6
libcairo.so.2.11400.6
libgtk-3.so.0
libatk-1.0.so.0.22009.1
libgobject-2.0.so.0.4902.0
libpangocairo-1.0.so.0.4000.1
libgdk-3.so.0.1800.5
libgdk_pixbuf-2.0.so.0.3200.3

* Relevant perl modules:
Cairo/GObject.pm
Cairo.pm
Glib/Object/Introspection.pm
Glib.pm

Thanks for any feedback

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------15473CD141589ABAFF9372CC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hello,<br>
        I'm trying to port custom perl application from Debian into
        Yocto (morty).<br>
        I'm stuck at testing Gtk3 perl module. It looks to me that all
        necessary<br>
        components are already there. It looks to me that the issue is
        rather related<br>
        to Gtk3 or it's dependencies, rather than perl and it's modules.
        What do you think?<br>
        I'm certainly not a Gtk expert. Do you have any idea how could I
        further debug<br>
        this? Any hints what could be the issue?<br>
        <br>
        ```<br>
        <a class="moz-txt-link-abbreviated"
          href="mailto:root@qemux86-64:%7E/Gtk3-0.009#">root@qemux86-64:~/Gtk3-0.009#</a>
        perl Makefile.PL<br>
        Checking if your kit is complete...<br>
        Looks good<br>
        Generating a Unix-style Makefile<br>
        Writing Makefile for Gtk3<br>
        Writing MYMETA.yml and MYMETA.json<br>
        <br>
        <a class="moz-txt-link-abbreviated"
          href="mailto:root@qemux86-64:%7E/Gtk3-0.009#">root@qemux86-64:~/Gtk3-0.009#</a>
        make<br>
        cp lib/Gtk3.pm blib/lib/Gtk3.pm<br>
        <br>
        <a class="moz-txt-link-abbreviated"
          href="mailto:root@qemux86-64:%7E/Gtk3-0.009#">root@qemux86-64:~/Gtk3-0.009#</a>
        make<br>
        Skip blib/lib/Gtk3.pm (unchanged)<br>
        <a class="moz-txt-link-abbreviated"
          href="mailto:root@qemux86-64:%7E/Gtk3-0.009#">root@qemux86-64:~/Gtk3-0.009#</a>
        make test<br>
        PERL_DL_NONLAZY=1 "/usr/bin/perl5.22.1"
        "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef
        *Test::Harness::Switches; test_harness(0, 'blib/lib',
        'blib/arch')" t/*.t<br>
        t/00-init.t .................... Bailout called.  Further
        testing stopped:  Cannot load Gtk3: Could not lookup GType from
        function gdk_rectangle_get_type at t/00-init.t line 9.<br>
        FAILED--Further testing stopped: Cannot load Gtk3: Could not
        lookup GType from function gdk_rectangle_get_type at t/00-init.t
        line 9.<br>
        make: *** [Makefile:814: test_dynamic] Error 255<br>
        ```<br>
        <br>
        I'm running in qemu right now. My setup is:<br>
        <br>
        * Perl verion: This is perl 5, version 22, subversion 1
        (v5.22.1) built for x86_64-linux<br>
        * Relevant libraries:<br>
        libcairo-gobject.so.2.11400.6<br>
        libcairo.so.2.11400.6<br>
        libgtk-3.so.0<br>
        libatk-1.0.so.0.22009.1<br>
        libgobject-2.0.so.0.4902.0<br>
        libpangocairo-1.0.so.0.4000.1<br>
        libgdk-3.so.0.1800.5<br>
        libgdk_pixbuf-2.0.so.0.3200.3<br>
        <br>
        * Relevant perl modules:<br>
        Cairo/GObject.pm<br>
        Cairo.pm<br>
        Glib/Object/Introspection.pm<br>
        Glib.pm<br>
      </font></p>
    <font size="-1">Thanks for any feedback</font>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="http://3mdeb.com">http://3mdeb.com</a> | @3mdeb_com
</pre>
  </body>
</html>

--------------15473CD141589ABAFF9372CC--
