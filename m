Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79A8FE00970; Tue,  8 Aug 2017 16:09:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 511E8E00726
	for <yocto@yoctoproject.org>; Tue,  8 Aug 2017 16:09:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Aug 2017 16:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,345,1498546800"; 
	d="scan'208,217";a="1160666210"
Received: from clsulliv.jf.intel.com ([10.7.201.36])
	by orsmga001.jf.intel.com with ESMTP; 08 Aug 2017 16:09:02 -0700
To: Amanda Brindle <amanda.r.brindle@intel.com>, yocto@yoctoproject.org
References: <1502147875-4801-1-git-send-email-amanda.r.brindle@intel.com>
From: Cal Sullivan <california.l.sullivan@intel.com>
Message-ID: <d534c1bd-3e8d-06a3-06b0-fb031c96ae70@intel.com>
Date: Tue, 8 Aug 2017 16:09:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1502147875-4801-1-git-send-email-amanda.r.brindle@intel.com>
Cc: Matthew Hansen <matthew.k.hansen@intel.com>
Subject: Re: [meta-alexa-demo][PATCH 1/3] Moved meta-alexa-demo top level to meta-alexapi
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
X-List-Received-Date: Tue, 08 Aug 2017 23:09:04 -0000
Content-Type: multipart/alternative;
	boundary="------------CCBAE10F68ED1F44BF5E5775"
Content-Language: en-US

--------------CCBAE10F68ED1F44BF5E5775
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Sorry for slow response. I see your signoff on the original patch, do I 
have permission to add it back to these?

Thanks,
Cal

On 08/07/2017 04:17 PM, Amanda Brindle wrote:
> From: Matthew Hansen <matthew.k.hansen@intel.com>
>
> ---
>   COPYING.MIT => meta-alexapi/COPYING.MIT                                   | 0
>   LICENSE => meta-alexapi/LICENSE                                           | 0
>   README => meta-alexapi/README                                             | 0
>   {conf => meta-alexapi/conf}/layer.conf                                    | 0
>   .../recipes-connectivity}/libmtp/libmtp_1.1.5.bbappend                    | 0
>   .../alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch       | 0
>   .../0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch       | 0
>   .../0003-src.config.template.yaml-Set-default-input-to-defaul.patch       | 0
>   {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi_git.bb        | 0
>   .../recipes-devtools}/python/python-cheroot_5.1.0.bb                      | 0
>   .../recipes-devtools}/python/python-cherrypy_10.1.1.bb                    | 0
>   .../recipes-devtools}/python/python-memcached_1.58.bb                     | 0
>   .../recipes-devtools}/python/python-pocketsphinx_0.1.3.bb                 | 0
>   .../recipes-devtools}/python/python-portend_1.8.bb                        | 0
>   .../recipes-devtools}/python/python-py-getch_1.0.1.bb                     | 0
>   .../recipes-devtools}/python/python-tempora_1.6.1.bb                      | 0
>   .../recipes-devtools}/python/python-vlc_1.1.2.bb                          | 0
>   .../recipes-devtools}/python/python-wave_0.0.2.bb                         | 0
>   .../recipes-devtools}/python/python-webrtcvad_2.0.10.bb                   | 0
>   .../recipes-multimedia}/vlc/vlc_2.2.2.bbappend                            | 0
>   20 files changed, 0 insertions(+), 0 deletions(-)
>   rename COPYING.MIT => meta-alexapi/COPYING.MIT (100%)
>   rename LICENSE => meta-alexapi/LICENSE (100%)
>   rename README => meta-alexapi/README (100%)
>   rename {conf => meta-alexapi/conf}/layer.conf (100%)
>   rename {recipes-connectivity => meta-alexapi/recipes-connectivity}/libmtp/libmtp_1.1.5.bbappend (100%)
>   rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch (100%)
>   rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch (100%)
>   rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch (100%)
>   rename {recipes-core => meta-alexapi/recipes-core}/alexapi/alexapi_git.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-cheroot_5.1.0.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-cherrypy_10.1.1.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-memcached_1.58.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-pocketsphinx_0.1.3.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-portend_1.8.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-py-getch_1.0.1.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-tempora_1.6.1.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-vlc_1.1.2.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-wave_0.0.2.bb (100%)
>   rename {recipes-devtools => meta-alexapi/recipes-devtools}/python/python-webrtcvad_2.0.10.bb (100%)
>   rename {recipes-multimedia => meta-alexapi/recipes-multimedia}/vlc/vlc_2.2.2.bbappend (100%)
>


--------------CCBAE10F68ED1F44BF5E5775
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <font size="-1">Sorry for slow response. I see your signoff on the
      original patch, do I have permission to add it back to these?<br>
      <br>
      Thanks,<br>
      Cal</font><br>
    <br>
    <div class="moz-cite-prefix">On 08/07/2017 04:17 PM, Amanda Brindle
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1502147875-4801-1-git-send-email-amanda.r.brindle@intel.com">
      <pre wrap="">From: Matthew Hansen <a class="moz-txt-link-rfc2396E" href="mailto:matthew.k.hansen@intel.com">&lt;matthew.k.hansen@intel.com&gt;</a>

---
 COPYING.MIT =&gt; meta-alexapi/COPYING.MIT                                   | 0
 LICENSE =&gt; meta-alexapi/LICENSE                                           | 0
 README =&gt; meta-alexapi/README                                             | 0
 {conf =&gt; meta-alexapi/conf}/layer.conf                                    | 0
 .../recipes-connectivity}/libmtp/libmtp_1.1.5.bbappend                    | 0
 .../alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch       | 0
 .../0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch       | 0
 .../0003-src.config.template.yaml-Set-default-input-to-defaul.patch       | 0
 {recipes-core =&gt; meta-alexapi/recipes-core}/alexapi/alexapi_git.bb        | 0
 .../recipes-devtools}/python/python-cheroot_5.1.0.bb                      | 0
 .../recipes-devtools}/python/python-cherrypy_10.1.1.bb                    | 0
 .../recipes-devtools}/python/python-memcached_1.58.bb                     | 0
 .../recipes-devtools}/python/python-pocketsphinx_0.1.3.bb                 | 0
 .../recipes-devtools}/python/python-portend_1.8.bb                        | 0
 .../recipes-devtools}/python/python-py-getch_1.0.1.bb                     | 0
 .../recipes-devtools}/python/python-tempora_1.6.1.bb                      | 0
 .../recipes-devtools}/python/python-vlc_1.1.2.bb                          | 0
 .../recipes-devtools}/python/python-wave_0.0.2.bb                         | 0
 .../recipes-devtools}/python/python-webrtcvad_2.0.10.bb                   | 0
 .../recipes-multimedia}/vlc/vlc_2.2.2.bbappend                            | 0
 20 files changed, 0 insertions(+), 0 deletions(-)
 rename COPYING.MIT =&gt; meta-alexapi/COPYING.MIT (100%)
 rename LICENSE =&gt; meta-alexapi/LICENSE (100%)
 rename README =&gt; meta-alexapi/README (100%)
 rename {conf =&gt; meta-alexapi/conf}/layer.conf (100%)
 rename {recipes-connectivity =&gt; meta-alexapi/recipes-connectivity}/libmtp/libmtp_1.1.5.bbappend (100%)
 rename {recipes-core =&gt; meta-alexapi/recipes-core}/alexapi/alexapi/0001-common.sh-Get-rid-of-grep-perl-regex.patch (100%)
 rename {recipes-core =&gt; meta-alexapi/recipes-core}/alexapi/alexapi/0002-setup.sh-Change-some-things-that-don-t-make-sense-fo.patch (100%)
 rename {recipes-core =&gt; meta-alexapi/recipes-core}/alexapi/alexapi/0003-src.config.template.yaml-Set-default-input-to-defaul.patch (100%)
 rename {recipes-core =&gt; meta-alexapi/recipes-core}/alexapi/alexapi_git.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-cheroot_5.1.0.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-cherrypy_10.1.1.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-memcached_1.58.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-pocketsphinx_0.1.3.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-portend_1.8.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-py-getch_1.0.1.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-tempora_1.6.1.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-vlc_1.1.2.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-wave_0.0.2.bb (100%)
 rename {recipes-devtools =&gt; meta-alexapi/recipes-devtools}/python/python-webrtcvad_2.0.10.bb (100%)
 rename {recipes-multimedia =&gt; meta-alexapi/recipes-multimedia}/vlc/vlc_2.2.2.bbappend (100%)

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------CCBAE10F68ED1F44BF5E5775--
