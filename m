Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19D88E00C82; Thu, 23 Jun 2016 07:11:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1ABE00C7D
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 07:10:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 23 Jun 2016 07:10:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,509,1459839600"; 
	d="scan'208,217";a="1008198004"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.155])
	([10.219.5.155])
	by fmsmga002.fm.intel.com with ESMTP; 23 Jun 2016 07:10:49 -0700
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB5PR06MB15731242248C60AED84A0353CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <89124cde-04fa-a2be-8cad-1b12a41107b4@linux.intel.com>
Date: Thu, 23 Jun 2016 09:12:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <DB5PR06MB15731242248C60AED84A0353CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com>
Subject: Re: Regarding backslash in bblayers.conf file
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
X-List-Received-Date: Thu, 23 Jun 2016 14:11:05 -0000
Content-Type: multipart/alternative;
	boundary="------------68D18B67498B650D3EB7B180"

--------------68D18B67498B650D3EB7B180
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

This looks to be a bug. System should either accept path names with or 
without trailing '/'. Please file a bug on bugzilla.yoctoproject.org


On 06/23/2016 08:45 AM, Gujulan Elango, Hari Prasath (H.) wrote:
>
> Hello,
>
>
> We were facing a issue when building 'weston'. The issue is we had 
> included meta-renesas & poky in our bblayers.conf file. The weston 
> package is provided by both poky(v1.8.0) and meta-renesas(v1.9.0). We 
> want the weston provided by the meta-renesas layer as it is the latest 
> and also includes some changes done by Renesas.
>
>
> But for some reason, it was building the weston provided by 
> poky(1.8.0) which we don't want. Then we realized the issue to a 
> backslash added by mistake in the bblayers.conf file after 
> meta-rcar-gen3 as shown below.
>
>

> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "6"
>
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
>
> BBLAYERS ?= " \
>   ${TOPDIR}/../poky/meta \
>   ${TOPDIR}/../poky/meta-yocto \
>   ${TOPDIR}/../poky/meta-yocto-bsp \
>   ${TOPDIR}/../meta-renesas/meta-rcar-gen3/ \
>   ${TOPDIR}/../meta-linaro/meta-linaro-toolchain/ \
>   ${TOPDIR}/../meta-visteon-monarch \
>   ${TOPDIR}/../meta-browser \
>   ${TOPDIR}/../meta-openembedded/meta-oe \
>   ${TOPDIR}/../meta-openembedded/meta-gnome \
>   ${TOPDIR}/../meta-openembedded/meta-networking \
>   ${TOPDIR}/../meta-openembedded/meta-python \
>   "
> BBLAYERS_NON_REMOVABLE ?= " \
>   ${TOPDIR}/../poky/meta \
>   ${TOPDIR}/../poky/meta-yocto \
>   "
>
>
> After removing the character, its now building the weston provided by 
> the mera-rcar-gen3 layer(v1.9.0) correctly as we expect. But I am not 
> able to understand what was happening when the backslash character was 
> present. Also when I was building weston with this unwanred character, 
> I was getting the warning shown below which I couldn't understand.
>
>
> Loading cache...done.
> Loaded 4665 entries from dependency cache.
> Parsing recipes...done.
> Parsing of 2046 .bb files complete (2045 cached, 1 parsed). 4666 
> targets, 943 skipped, 2 masked, 0 errors.
> WARNING: No bb files matched BBFILE_PATTERN_rcar-gen3 
> '^/home/hari/salvator-x-1.1.0/monarch-distribution/build_release/../meta-renesas/meta-rcar-gen3//'
> WARNING: No bb files matched BBFILE_PATTERN_linaro-toolchain 
> '^/home/hari/salvator-x-1.1.0/monarch-distribution/build_release/../meta-linaro/meta-linaro-toolchain//'
> NOTE: Resolving any missing task queue dependencies
> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due 
> to PREFERRED_PROVIDERS
>
>
> Thanks & Regards,
>
> Hari Prasath
>
>
>


--------------68D18B67498B650D3EB7B180
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>This looks to be a bug. System should either accept path names
      with or without trailing '/'. Please file a bug on
      bugzilla.yoctoproject.org<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 06/23/2016 08:45 AM, Gujulan Elango,
      Hari Prasath (H.) wrote:<br>
    </div>
    <blockquote
cite="mid:DB5PR06MB15731242248C60AED84A0353CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com"
      type="cite">
      <meta http-equiv="Context-Type" content="text/html;
        charset=iso-8859-1">
      <div id="divtagdefaultwrapper">
        <p>Hello,</p>
        <p><br>
        </p>
        <p>We were facing a issue when building 'weston'. The issue is
          we had included meta-renesas &amp; poky in our bblayers.conf
          file. The weston package is provided by both poky(v1.8.0) and
          meta-renesas(v1.9.0). We want the weston provided by the
          meta-renesas layer as it is the latest and also includes some
          changes done by Renesas.</p>
        <p><br>
        </p>
        <p>But for some reason, it was building the weston provided by
          poky(1.8.0) which we don't want. Then we realized the issue to
          a backslash added by mistake in the bblayers.conf file after
          meta-rcar-gen3 as shown below.</p>
        <p><br>
        </p>
      </div>
    </blockquote>
    <br>
    <blockquote
cite="mid:DB5PR06MB15731242248C60AED84A0353CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com"
      type="cite">
      <div id="divtagdefaultwrapper">
        <p>
        </p>
        <div><span># LAYER_CONF_VERSION is increased each time
            build/conf/bblayers.conf</span><br>
          <span># changes incompatibly</span><br>
          <span>LCONF_VERSION = "6"</span><br>
          <br>
          <span>BBPATH = "${TOPDIR}"</span><br>
          <span>BBFILES ?= ""</span><br>
          <br>
          <span>BBLAYERS ?= " \</span><br>
          <span>  ${TOPDIR}/../poky/meta \</span><br>
          <span>  ${TOPDIR}/../poky/meta-yocto \</span><br>
          <span>  ${TOPDIR}/../poky/meta-yocto-bsp \</span><br>
          <span>  ${TOPDIR}/../meta-renesas/meta-rcar-gen3/ \</span><br>
          <span>  ${TOPDIR}/../meta-linaro/meta-linaro-toolchain/ \</span><br>
          <span>  ${TOPDIR}/../meta-visteon-monarch \</span><br>
          <span>  ${TOPDIR}/../meta-browser \</span><br>
          <span>  ${TOPDIR}/../meta-openembedded/meta-oe \</span><br>
          <span>  ${TOPDIR}/../meta-openembedded/meta-gnome \</span><br>
          <span>  ${TOPDIR}/../meta-openembedded/meta-networking \</span><br>
          <span>  ${TOPDIR}/../meta-openembedded/meta-python \</span><br>
          <span>  "</span><br>
          <span>BBLAYERS_NON_REMOVABLE ?= " \</span><br>
          <span>  ${TOPDIR}/../poky/meta \</span><br>
          <span>  ${TOPDIR}/../poky/meta-yocto \</span><br>
            "<br>
        </div>
        <p><br>
        </p>
        <p>After removing the character, its now building the weston
          provided by the mera-rcar-gen3 layer(v1.9.0) correctly as we
          expect. But I am not able to understand what was happening
          when the backslash character was present. Also when I was
          building weston with this unwanred character, I was getting
          the warning shown below which I couldn't understand. </p>
        <p><br>
        </p>
        <div><span>Loading cache...done.</span><br>
          <span>Loaded 4665 entries from dependency cache.</span><br>
          <span>Parsing recipes...done.</span><br>
          <span>Parsing of 2046 .bb files complete (2045 cached, 1
            parsed). 4666 targets, 943 skipped, 2 masked, 0 errors.</span><br>
          <span>WARNING: No bb files matched BBFILE_PATTERN_rcar-gen3
'^/home/hari/salvator-x-1.1.0/monarch-distribution/build_release/../meta-renesas/meta-rcar-gen3//'</span><br>
          <span>WARNING: No bb files matched
            BBFILE_PATTERN_linaro-toolchain
'^/home/hari/salvator-x-1.1.0/monarch-distribution/build_release/../meta-linaro/meta-linaro-toolchain//'</span><br>
          <span>NOTE: Resolving any missing task queue dependencies</span><br>
          <span>NOTE: selecting pseudo-native to satisfy
            virtual/fakeroot-native due to PREFERRED_PROVIDERS</span><br>
        </div>
        <br>
        <p><br>
        </p>
        <div id="Signature">Thanks &amp; Regards,
          <div id="divtagdefaultwrapper">
            <p>Hari Prasath<br>
            </p>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------68D18B67498B650D3EB7B180--
