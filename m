Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BD06E00DED; Fri, 23 Aug 2019 15:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A37FE00C25
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 15:21:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7NMKU0O002923
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Aug 2019 15:21:07 -0700
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Fri, 23 Aug 2019 15:20:48 -0700
To: "Behnke, Jochen" <j.behnke@schmidttechnology.de>, "yocto Mailingliste
	(yocto@yoctoproject.org)" <yocto@yoctoproject.org>
References: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
	<05840950-f052-714b-0aac-aa598f209a4c@windriver.com>
	<55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <229fa285-a92e-aa6b-4742-da8d21197163@windriver.com>
Date: Fri, 23 Aug 2019 18:20:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de>
X-Originating-IP: [172.25.44.5]
Subject: Re: wic create - bad ownership of directories inside image
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
X-List-Received-Date: Fri, 23 Aug 2019 22:21:38 -0000
Content-Type: multipart/alternative;
	boundary="------------95C095B98999C3D7113EF128"
Content-Language: en-GB

--------------95C095B98999C3D7113EF128
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 8/22/19 11:23 AM, Behnke, Jochen wrote:
> Hello Randy,
>
> thanks for your reponse and sorry for my late reaction.
>
> In order to test, if the problem can be reproduced reliably, I 
> performed a clean rebuild as follows
>
> $ source oe-init-build-env build-tca5-32
> $ rm -rf tmp
> $ rm -rf sstate-cache
> $ bitbake core-image-minimal
> $ wic create mkefidisk -e core-image-minmal
>
> I then mounted the resulting image file 
> "mkefidisk-201908221701-sda.direct" using a loopback device (losetup)
> Inside the Image all directories have UID/GID 1000/1000, which 
> corresponds to my host user.
> Files however have UID/GID 0/0.

Hi Jochen,

I'm not able to reproduce the error, see below (1).

What version of oe-core/bitbake are you using?

I'm using the latest master branches:

oe-core: 64f9fd2a1e quilt: added less to RDEPENDS list
bitbake:  28b3f0d8  runqueue: Optimise build_taskdepdata slightly


>
> So the answer to your question is "yes I can reproduce the behavior".
>
> One sidenote
> - I am using an appended core-image-minimal not the default



What is the bbappend? Is it publicly clonable? What happens if you drop 
that addition?

../Randy


(1)

I followed your steps above and mounted my image as follows:

$ fdisk -l mkefidisk-201908230902-sda.direct
Disk mkefidisk-201908230902-sda.direct: 94.4 MiB, 98956288 bytes, 193274 
sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 1E5F9B4E-ED8A-4677-82CD-7B146807C145

Device                              Start    End Sectors  Size Type
mkefidisk-201908230902-sda.direct1   2048  51433   49386 24.1M Microsoft 
basic data
mkefidisk-201908230902-sda.direct2  53248 103127   49880 24.4M Linux 
filesystem
mkefidisk-201908230902-sda.direct3 103128 193239   90112   44M Linux swap


# 53248*512 = 27262976

$ sudo mount -o loop,offset=27262976 ./mkefidisk-201908230902-sda.direct 
/mnt/loop

$ ls -l /mnt/loop/bin/busybox.nosuid
-rwxr-xr-x 1 root root 625296 Aug 23 11:45 /mnt/loop/bin/busybox.nosuid

$ ls -l /mnt/loop/usr | head -3
total 10
drwxr-xr-x 2 root root 3072 Aug 23 11:52 bin
drwxr-xr-x 2 root root 1024 Aug 23 11:29 games


../Randy

> - In my other image I am using qt5 (v5.12)
>
>
>
> Regards
> Jochen
>
> On 8/12/19 5:11 AM, Behnke, Jochen wrote:
> > Hello,
> >
> > I am using poky 2.6.1 (thud) and create images using the wic utility.
> >
> > Recently I noticed that all directories contained in the created image
> > are owned by UID 1000 and not by root. The files inside the image
> > however are owned by root.
> >
> > The UID 1000 refers to my unprivileged user on the host system.
> >
> > Here is the command I use to create the image
> >
> > “wic create mkefidisk –e core-image-minimal”
> >
> > The images created by bitbake directly (.tar.bz2, .hddimg) are correct
> > so this seems to be a wic related problem.
> >
> > Does anybody have a solution for this?
>
> Hi Jochen,
>
> No and I've never seen this particular extreme symptom.
>
> There is a known, generally rare bug:
>     Bug 12434 - pseudo: Incorrect UID/GID in packaged files
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12434
> but that usually shows up when building.
>
> You could check you build logs for the generic stings from:
>
>     glibc-locale-2.26: glibc-locale:
> /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_MEASUREMENT
>     is owned by uid 3004, which is the same as the user running bitbake.
>     This may be due to host contamination [host-user-contaminated]
>
>
> Is your issue 100% reproducible?
>
> ../Randy
>
>
> >
> > Many thanks in advance, any hint is appreciated.
> >
> > Regards
> >
> > Jochen
> >
> > <gfidisc.SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000>
> >
> >
> > __________________________________
> > *SCHMIDT Technology GmbH*
> > Feldbergstrasse 1
> > 78112 St. Georgen/Germany
> > Telefon +49 (0) 77 24 / 89 90
> > Fax +49 (0) 77 24 / 89 91 01
> > info@schmidttechnology.de <mailto:info@schmidttechnology.de>
> > http://www.schmidttechnology.de
> >
> > USt-Id Nr. DE 811725105 · Registergericht Freiburg HRB 600 755
> > Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt
> >
> > <gfidisc.SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000>
> >
> >
> >
>
>
> -- 
> # Randy MacLeod
> # Wind River Linux


-- 
# Randy MacLeod
# Wind River Linux


--------------95C095B98999C3D7113EF128
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 8/22/19 11:23 AM, Behnke, Jochen
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Exchange Server">
      <!-- converted from rtf -->
      <style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: #800000 2px solid; } --></style>
      <font size="3" face="Times New Roman"><span
          style="font-size:12pt;"><a name="BM_BEGIN"
            moz-do-not-send="true"></a>
          <div><font size="2"><span style="font-size:10pt;">Hello Randy,<br>
                <br>
                thanks for your reponse and sorry for my late reaction.<br>
                <br>
                In order to test, if the problem can be reproduced
                reliably, I performed a clean rebuild as follows<br>
                <br>
                $ source oe-init-build-env build-tca5-32<br>
                $ rm -rf tmp<br>
                $ rm -rf sstate-cache<br>
                $ bitbake core-image-minimal<br>
                $ wic create mkefidisk -e core-image-minmal<br>
                <br>
                I then mounted the resulting image file
                "mkefidisk-201908221701-sda.direct" using a loopback
                device (losetup)<br>
                Inside the Image all directories have UID/GID 1000/1000,
                which corresponds to my host user.<br>
                Files however have UID/GID 0/0.<br>
              </span></font></div>
        </span></font></blockquote>
    <p>Hi Jochen,<br>
    </p>
    <p>I'm not able to reproduce the error, see below (1).</p>
    <p>What version of oe-core/bitbake are you using?</p>
    <p>I'm using the latest master branches:<br>
    </p>
    <p>oe-core: 64f9fd2a1e quilt: added less to RDEPENDS list<br>
      bitbake:  28b3f0d8  runqueue: Optimise build_taskdepdata slightly<br>
      <br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de"><font
        size="3" face="Times New Roman"><span style="font-size:12pt;">
          <div><font size="2"><span style="font-size:10pt;">
                <br>
                So the answer to your question is "yes I can reproduce
                the behavior".<br>
                <br>
                One sidenote<br>
                - I am using an appended core-image-minimal not the
                default<br>
              </span></font></div>
        </span></font></blockquote>
    <p><br>
    </p>
    <p><br>
    </p>
    <p>What is the bbappend? Is it publicly clonable? What happens if
      you drop that addition?</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <p>(1)</p>
    <p>I followed your steps above and mounted my image as follows:</p>
    <p>$ fdisk -l mkefidisk-201908230902-sda.direct<br>
      Disk mkefidisk-201908230902-sda.direct: 94.4 MiB, 98956288 bytes,
      193274 sectors<br>
      Units: sectors of 1 * 512 = 512 bytes<br>
      Sector size (logical/physical): 512 bytes / 512 bytes<br>
      I/O size (minimum/optimal): 512 bytes / 512 bytes<br>
      Disklabel type: gpt<br>
      Disk identifier: 1E5F9B4E-ED8A-4677-82CD-7B146807C145<br>
      <br>
      Device                              Start    End Sectors  Size
      Type<br>
      mkefidisk-201908230902-sda.direct1   2048  51433   49386 24.1M
      Microsoft basic data<br>
      mkefidisk-201908230902-sda.direct2  53248 103127   49880 24.4M
      Linux filesystem<br>
      mkefidisk-201908230902-sda.direct3 103128 193239   90112   44M
      Linux swap<br>
    </p>
    <p><br>
    </p>
    <p># 53248*512 = 27262976</p>
    <p>$ sudo mount -o loop,offset=27262976
      ./mkefidisk-201908230902-sda.direct /mnt/loop</p>
    <p>$ ls -l /mnt/loop/bin/busybox.nosuid <br>
      -rwxr-xr-x 1 root root 625296 Aug 23 11:45
      /mnt/loop/bin/busybox.nosuid<br>
    </p>
    <p>$ ls -l /mnt/loop/usr | head -3<br>
      total 10<br>
      drwxr-xr-x 2 root root 3072 Aug 23 11:52 bin<br>
      drwxr-xr-x 2 root root 1024 Aug 23 11:29 games</p>
    <p><br>
    </p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite"
cite="mid:55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de"><font
        size="3" face="Times New Roman"><span style="font-size:12pt;">
          <div><font size="2"><span style="font-size:10pt;">
                - In my other image I am using qt5 (v5.12)<br>
                <br>
                <br>
                <br>
                Regards<br>
                Jochen<br>
                <br>
                On 8/12/19 5:11 AM, Behnke, Jochen wrote:<br>
                &gt; Hello,<br>
                &gt; <br>
                &gt; I am using poky 2.6.1 (thud) and create images
                using the wic utility.<br>
                &gt; <br>
                &gt; Recently I noticed that all directories contained
                in the created image <br>
                &gt; are owned by UID 1000 and not by root. The files
                inside the image <br>
                &gt; however are owned by root.<br>
                &gt; <br>
                &gt; The UID 1000 refers to my unprivileged user on the
                host system.<br>
                &gt; <br>
                &gt; Here is the command I use to create the image<br>
                &gt; <br>
                &gt; “wic create mkefidisk –e core-image-minimal”<br>
                &gt; <br>
                &gt; The images created by bitbake directly (.tar.bz2,
                .hddimg) are correct <br>
                &gt; so this seems to be a wic related problem.<br>
                &gt; <br>
                &gt; Does anybody have a solution for this?<br>
                <br>
                Hi Jochen,<br>
                <br>
                No and I've never seen this particular extreme symptom.<br>
                <br>
                There is a known, generally rare bug:<br>
                    Bug 12434 - pseudo: Incorrect UID/GID in packaged
                files<br>
                    <a
                  href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12434"
                  moz-do-not-send="true">https://bugzilla.yoctoproject.org/show_bug.cgi?id=12434</a><br>
                but that usually shows up when building.<br>
                <br>
                You could check you build logs for the generic stings
                from:<br>
                <br>
                    glibc-locale-2.26: glibc-locale:<br>
                   
                /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_MEASUREMENT<br>
                    is owned by uid 3004, which is the same as the user
                running bitbake.<br>
                    This may be due to host contamination
                [host-user-contaminated]<br>
                <br>
                <br>
                Is your issue 100% reproducible?<br>
                <br>
                ../Randy<br>
                <br>
                <br>
                &gt; <br>
                &gt; Many thanks in advance, any hint is appreciated.<br>
                &gt; <br>
                &gt; Regards<br>
                &gt; <br>
                &gt; Jochen<br>
                &gt; <br>
                &gt;
&lt;gfidisc.SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000&gt;<br>
                &gt; <br>
                &gt; <br>
                &gt; __________________________________<br>
                &gt; *SCHMIDT Technology GmbH*<br>
                &gt; Feldbergstrasse 1<br>
                &gt; 78112 St. Georgen/Germany<br>
                &gt; Telefon +49 (0) 77 24 / 89 90<br>
                &gt; Fax +49 (0) 77 24 / 89 91 01<br>
                &gt; <a class="moz-txt-link-abbreviated" href="mailto:info@schmidttechnology.de">info@schmidttechnology.de</a> &lt;<a
                  href="mailto:info@schmidttechnology.de"
                  moz-do-not-send="true">mailto:info@schmidttechnology.de</a>&gt;<br>
                &gt; <a href="http://www.schmidttechnology.de"
                  moz-do-not-send="true">http://www.schmidttechnology.de</a><br>
                &gt; <br>
                &gt; USt-Id Nr. DE 811725105 · Registergericht Freiburg
                HRB 600 755<br>
                &gt; Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt<br>
                &gt; <br>
                &gt;
&lt;gfidisc.SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000&gt;<br>
                &gt; <br>
                &gt; <br>
                &gt; <br>
                <br>
                <br>
                -- <br>
                # Randy MacLeod<br>
                # Wind River Linux<br>
              </span></font></div>
        </span></font>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------95C095B98999C3D7113EF128--
