Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E65D0E00ADB; Tue,  1 Dec 2015 06:33:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B46EFE00A9B
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 06:33:40 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2015 06:31:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,369,1444719600"; 
	d="scan'208,217";a="851448327"
Received: from lsandov1-mob1-linux.zpn.intel.com (HELO [10.219.5.140])
	([10.219.5.140])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2015 06:31:17 -0800
To: Ayoub Zaki <ayoub.zaki@googlemail.com>, yocto@yoctoproject.org
References: <CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <565DAFE7.2060808@linux.intel.com>
Date: Tue, 1 Dec 2015 08:34:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com>
Subject: Re: FEED_DEPLOYDIR_BASE_URI does not work
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
X-List-Received-Date: Tue, 01 Dec 2015 14:33:45 -0000
Content-Type: multipart/alternative;
	boundary="------------000306080807030907090300"

--------------000306080807030907090300
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 12/01/2015 03:49 AM, Ayoub Zaki wrote:
> |Hello,
>
> Setting FEED_DEPLOYDIR_BASE_URI 
> <http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-FEED_DEPLOYDIR_BASE_URI> 
> in local.conf as specified in the yocto manual does NOT generate any 
> /etc/opkg/base-feeds.conf in the root of the target filesystem!
> Is ist a known bug ? I'm using jethro version with opkg as package 
> manager.
> |
Looks like a bug, so file a bug on bugzilla.yoctoproject.org.

Have you tried setting the variables named 
PACKAGE_FEED_[URIS|BASE_PATHS|ARCHS] ?

http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-PACKAGE_FEED_URIS

> |
> cheers,
> Ayoub zaki
> |
>
>


--------------000306080807030907090300
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/01/2015 03:49 AM, Ayoub Zaki
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com"
      type="cite">
      <div dir="ltr"><code class=""><font size="2">Hello,<br>
            <br>
            Setting <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-FEED_DEPLOYDIR_BASE_URI">FEED_DEPLOYDIR_BASE_URI</a>
            in local.conf as specified in the yocto manual does NOT
            generate any /etc/opkg/base-feeds.conf in the root of the
            target filesystem!<br>
            Is ist a known bug ? I'm using jethro version with opkg as
            package manager.<br>
          </font></code></div>
    </blockquote>
    Looks like a bug, so file a bug on bugzilla.yoctoproject.org.<br>
    <br>
    Have you tried setting the variables named
    PACKAGE_FEED_[URIS|BASE_PATHS|ARCHS] ?<br>
    <br>
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-PACKAGE_FEED_URIS">http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-PACKAGE_FEED_URIS</a><br>
    <br>
    <blockquote
cite="mid:CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com"
      type="cite">
      <div dir="ltr"><code class=""><font size="2"><br>
            cheers,<br>
            Ayoub zaki</font><br>
        </code></div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000306080807030907090300--
