Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F5AE013A2
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 00:24:57 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,749,1363104000"; d="scan'208,217";a="7377328"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 27 May 2013 15:22:00 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r4R7OoQv007731;
	Mon, 27 May 2013 15:24:50 +0800
Received: from [127.0.0.1] ([10.167.226.197])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013052715232407-1554018 ;
	Mon, 27 May 2013 15:23:24 +0800 
Message-ID: <51A30A7F.9080901@cn.fujitsu.com>
Date: Mon, 27 May 2013 15:25:51 +0800
From: Li Zhijian <lizhijian@cn.fujitsu.com>
Organization: fnst-ulinux
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <51A2F1DC.6010307@cn.fujitsu.com>
	<CAP71WjxNxeK_Jn5MeNjzGb1bi0vcvJLmF6HoDvnA_zwtJOiLBg@mail.gmail.com>
In-Reply-To: <CAP71WjxNxeK_Jn5MeNjzGb1bi0vcvJLmF6HoDvnA_zwtJOiLBg@mail.gmail.com>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/05/27 15:23:24,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/05/27 15:23:24,
	Serialize complete at 2013/05/27 15:23:24
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to modify SRC_URI[md5sum] if there are mutil remote files
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
X-List-Received-Date: Mon, 27 May 2013 07:24:58 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/html; charset=ISO-8859-1

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">resolved.<br>
      thanks<br>
      <br>
      <br>
      at 2013-5-27 14:52, Nicolas Dechesne wrote:<br>
    </div>
    <blockquote
cite="mid:CAP71WjxNxeK_Jn5MeNjzGb1bi0vcvJLmF6HoDvnA_zwtJOiLBg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Mon, May 27, 2013 at 7:40 AM, Li
            Zhijian <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:lizhijian@cn.fujitsu.com" target="_blank">lizhijian@cn.fujitsu.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div id=":11b" style="overflow:hidden">I modified as
                follows ,but it don't work.<br>
                <br>
                --- a/meta-oe/recipes-support/ntp/ntp.inc<br>
                +++ b/meta-oe/recipes-support/ntp/ntp.inc<br>
                @@ -20,6 +20,9 @@ SRC_URI = "<a moz-do-not-send="true"
href="http://www.eecis.udel.edu/%7Entp/ntp_spool/ntp4/ntp-4.2/ntp-$%7BPV%7D.tar.g"
                  target="_blank">http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-${PV}.tar.g</a><br>
                <a class="moz-txt-link-freetext" href="file://ntpdate.default">file://ntpdate.default</a> \<br>
                <a class="moz-txt-link-freetext" href="file://ntp.keys">file://ntp.keys</a> \<br>
                "<br>
                +SRC_URI[md5sum] = "00df80a84ec9528fcfb09498075525bc"<br>
                +SRC_URI[sha256sum] =
                "d6ab8371f9d31e594eb6922823d5ccd03dcc4e9d84b0e23ea25ac1405432f91c"<br>
                +SRC_URI += "<a moz-do-not-send="true"
                  href="http://jaist.dl.sourceforge.net/project/ictom/ntpstat-0.2.tar.gz"
                  target="_blank">http://jaist.dl.sourceforge.net/project/ictom/ntpstat-0.2.tar.gz</a>
                "<br>
                +SRC_URI[md5sum] += "516847d99a772305cab711339998f9ea"<br>
                +SRC_URI[sha256sum] +=
                "486fdfceb38590a9ff52ab8de1cc1ec4fc696f2e94da992e9ccf30157c32f01e"<br>
                <br>
                <br>
                Any help or ideas?</div>
            </blockquote>
          </div>
          <br>
          you should have a look at:</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra"><a moz-do-not-send="true"
href="http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-extended/bash/bash_4.2.bb">http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-extended/bash/bash_4.2.bb</a><br>
        </div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra" style="">or</div>
        <div class="gmail_extra" style=""><br>
        </div>
        <div class="gmail_extra" style=""><a moz-do-not-send="true"
href="http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb">http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb</a><br>
        </div>
        <div class="gmail_extra" style=""><br>
        </div>
        <div class="gmail_extra" style="">and for more examples, you can
          run&nbsp;</div>
        <div class="gmail_extra" style="">$ git grep "\.md5sum"&nbsp;</div>
        <div class="gmail_extra" style=""><br>
        </div>
        <div class="gmail_extra" style="">in the OE-core tree.</div>
        <div class="gmail_extra" style=""><br>
        </div>
        <div class="gmail_extra" style="">basically, the idea is to
          'name' each of your sources, and refer them as
          &lt;name&gt;.md5sum</div>
        <div class="gmail_extra" style=""><br>
        </div>
      </div>
    </blockquote>
    <br>
    <br>
    <pre class="moz-signature" cols="100000">-- 
Best regards.
Li Zhijian</pre>
  </body>
</html>


