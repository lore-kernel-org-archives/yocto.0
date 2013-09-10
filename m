Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B6CE0051D
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 10:26:17 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 199CD6;
	Tue, 10 Sep 2013 19:26:14 +0200
Message-ID: <522F5635.3040803@horus.es>
Date: Tue, 10 Sep 2013 19:26:13 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: Jegan Chandru <pcjegan@gmail.com>
References: <522F013F.7070002@horus.es>
	<CAAA4K6JvKPBSUZAwYwUVFCj_n64B-L1N3xN5cwuUs4Cg6ijPNg@mail.gmail.com>
In-Reply-To: <CAAA4K6JvKPBSUZAwYwUVFCj_n64B-L1N3xN5cwuUs4Cg6ijPNg@mail.gmail.com>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add new module to recipe + meta-toolchain-qt: add gdb
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
X-List-Received-Date: Tue, 10 Sep 2013 17:26:22 -0000
Content-Type: multipart/alternative;
	boundary="------------000509060100070004080704"

--------------000509060100070004080704
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jegan

El 10/09/2013 16:05, Jegan Chandru escribió:
> Hello,
>
> On Tue, Sep 10, 2013 at 4:53 PM, Jose Mª Ferreiro 
> <jose.ferreiro@horus.es <mailto:jose.ferreiro@horus.es>> wrote:
>
>     Hello
>
>     We have compiled meta-toolchain-qt (Yocto dylan). Now we can run
>     QT applications on Desktop (Ubuntu 12.04) and on target (iMX6
>     sabre Lite board). We can also debug the applications on board,
>     but we can not debug on desktop.
>
>     When /usr/bin/gdb is started it starts automatically
>     /usr/bin/python. It fails because Ubuntu python does not recognize
>     sys.lib variable from /op/poky...python. We have found no way to
>     tell gdb to start changing PYTHONHOME to Ubuntu python home to
>     avoid the problem.
>
>     So we need to add gdb to the toolchain. If we get it to work, we
>     suppose the /op/poky...gdb will start the /opt/poky...python (we
>     test it and that python knows what sys.lib is).
>
>     We try to add to conf/local.conf: TOOLCHAIN_HOST_TASK_append = "
>     nativesdk-gdb". But nativesdk-gdb is not a defined name.
>
>
> try adding packagegroup-cross-canadian-${TRANSLATED_TARGET_ARCH} in 
> TOOLCHAIN_HOST_TASK_append which will add cross toolchain to your sdk 
> which includes cross gdb as well. There is no nativesdk-gdb afaik 
> unless if someone says otherwise. 
> see ./recipes-core/packagegroups/packagegroup-cross-canadian.bb 
> <http://packagegroup-cross-canadian.bb> for details.

I am lost. We added that but it did not work as we expected. In fact, I 
think that must be included in meta-toolchain-qt because we do not see 
any differences. Perhaps I explained it badly.

I think we already have the cross tools compiled. They are installed at:
/opt/poky/1.4.2/sysroots/i686-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi
There is a arm-...-gdb there, but this is not the failing gdb.

We expect/want to have a gdb compiled for the host machine at
/opt/poky/1.4.2/sysroots/i686-pokysdk-linux/usr/bin/

QT Desktop mode is starting /usr/bin/gdb but using the /opt/poky... 
directory as PYTHONHOME. We think if we have our 
/opt/poky/../usr/bin/gdb and we tell QT to use it, it will avoid ths 
sys.lib conflict.

Thanks and best regards

--------------000509060100070004080704
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Jegan<br>
    <br>
    <div class="moz-cite-prefix">El 10/09/2013 16:05, Jegan Chandru
      escribi&oacute;:<br>
    </div>
    <blockquote
cite="mid:CAAA4K6JvKPBSUZAwYwUVFCj_n64B-L1N3xN5cwuUs4Cg6ijPNg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hello,<br>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Tue, Sep 10, 2013 at 4:53 PM, Jose
            M&ordf; Ferreiro <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:jose.ferreiro@horus.es" target="_blank">jose.ferreiro@horus.es</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">Hello<br>
              <br>
              We have compiled meta-toolchain-qt (Yocto dylan). Now we
              can run QT applications on Desktop (Ubuntu 12.04) and on
              target (iMX6 sabre Lite board). We can also debug the
              applications on board, but we can not debug on desktop.<br>
              <br>
              When /usr/bin/gdb is started it starts automatically
              /usr/bin/python. It fails because Ubuntu python does not
              recognize sys.lib variable from /op/poky...python. We have
              found no way to tell gdb to start changing PYTHONHOME to
              Ubuntu python home to avoid the problem.<br>
              <br>
              So we need to add gdb to the toolchain. If we get it to
              work, we suppose the /op/poky...gdb will start the
              /opt/poky...python (we test it and that python knows what
              sys.lib is).<br>
              <br>
              We try to add to conf/local.conf:
              TOOLCHAIN_HOST_TASK_append = " nativesdk-gdb". But
              nativesdk-gdb is not a defined name.<br>
            </blockquote>
            <div><br>
            </div>
            <div>try
              adding&nbsp;packagegroup-cross-canadian-${TRANSLATED_TARGET_ARCH}
              in TOOLCHAIN_HOST_TASK_append which will add cross
              toolchain to your sdk which includes cross gdb as well.
              There is no nativesdk-gdb afaik unless if someone says
              otherwise. see&nbsp;./recipes-core/packagegroups/<a
                moz-do-not-send="true"
                href="http://packagegroup-cross-canadian.bb">packagegroup-cross-canadian.bb</a>
              for details.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I am lost. We added that but it did not work as we expected. In
    fact, I think that must be included in meta-toolchain-qt because we
    do not see any differences. Perhaps I explained it badly.<br>
    <br>
    I think we already have the cross tools compiled. They are installed
    at: <br>
/opt/poky/1.4.2/sysroots/i686-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi<br>
    There is a arm-...-gdb there, but this is not the failing gdb.<br>
    <br>
    We expect/want to have a gdb compiled for the host machine at <br>
    /opt/poky/1.4.2/sysroots/i686-pokysdk-linux/usr/bin/<br>
    <br>
    QT Desktop mode is starting /usr/bin/gdb but using the /opt/poky...
    directory as PYTHONHOME. We think if we have our
    /opt/poky/../usr/bin/gdb and we tell QT to use it, it will avoid ths
    sys.lib conflict.<br>
    <br>
    Thanks and best regards
  </body>
</html>

--------------000509060100070004080704--
