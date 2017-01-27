Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7D9E009F8; Thu, 26 Jan 2017 18:07:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB17BE0097C
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 18:07:25 -0800 (PST)
Received: by mail-pg0-f46.google.com with SMTP id 14so77048137pgg.1
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 18:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=/Faj351eiq665Sgemzj7e/VjhtvS+bpnzBlG+nS0B3Y=;
	b=YDTSXfSUriws/+LIfkZiTbiy2Hod/nhENJGB7TR3FBkZMCMiz/zXpvXqCQQji6Ehzq
	PI/9DDCaBCN1O/tgR5UGUH0hjMK/OJZwOmstMAnTTNH6jq2oSbUf9Daxd3Mok95Dtj0o
	Nvm3X1K0K8oX6/HcnJMnaPiznxaMZh5M+ZEaf7RXVw8+JDIt3vZMj+fbRd8rN4smVvYE
	0BTZ60vtVUJxm4Lf+KirBlBeQx23i51ZPEyP+A594ATtUaM5ubUu9UksqYSYaq8M6Dux
	qAHFPYygE3iEjSoCnYzntACDAVSmhwT/wH3I43xvJnesGSWSEUwCxg7hLqtE31KZDZHv
	0WyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=/Faj351eiq665Sgemzj7e/VjhtvS+bpnzBlG+nS0B3Y=;
	b=s3g9WQinz8PS+JNzJfYEVwCCb7RPmNRBbR8YIhN7lSms26lgPQ1yoDVfcE7EKkPuup
	jxRtqhnbRS5byfQ4/UJ2jTLIbFcgvXoIQTwnS9KPLZ34qNpYUv2U0q15MLVUyTrOCoBu
	tMPHfVIOhQBDCpJpA+Y3r9a6X4aVF7gnSbPcYzVNnVdzzt47TfiY47Aanuy1324dLlZP
	98KZ7ptqUrU1LSji88fXfXMZd3RHAokQmc2KFlIAETO51CEuqq8ZW2VSoafG/MLibqP+
	Hh5qtneetApyZ/B/watk/qfTPdu8jo/w4XujC2/V3QvXiYUzXVrIau1rxktgs4k39qPj
	60iA==
X-Gm-Message-State: AIkVDXLdwVfILLqxjpCaYeMCTnYZBVMIDfavPs4t27YnmaXBZXtSXAqB6PBgjziOH8swng==
X-Received: by 10.99.102.134 with SMTP id a128mr6584514pgc.215.1485482844521; 
	Thu, 26 Jan 2017 18:07:24 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6524:a1c0:a396:fda9])
	by smtp.gmail.com with ESMTPSA id
	w123sm6212072pfb.44.2017.01.26.18.07.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 18:07:24 -0800 (PST)
To: yocto@yoctoproject.org
References: <0bbf6acc9f2646b899d4837a90641d26@AMXPR48MB0165.041d.mgd.msft.net>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <adedc152-5a30-b43c-261a-01356a99adcd@gmail.com>
Date: Thu, 26 Jan 2017 18:07:23 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <0bbf6acc9f2646b899d4837a90641d26@AMXPR48MB0165.041d.mgd.msft.net>
Subject: Re: Exception in bitbake during build of openjdk-8 using meta-linaro
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
X-List-Received-Date: Fri, 27 Jan 2017 02:07:26 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 1/26/17 5:54 AM, SMITH Peter T wrote:
> Hi, I am trying to build openjdk-8 from the meta-linaro layer (I’m
> specifically interested in building for aarch64), everything proceeds
> well with gathering and building the dependencies until poky/bitbake
> attempts to fetch sources using hg when I see the error below. Anyone
> seen this before or can offer a pointer to what might be wrong?
> 
>  

if you could nail it down the particular recipe which is using hg
fetcher then it would be easy to proceed further. Secondly, also include
your build configuration that bitbake spits at very beginning of build,
that also helps.

> 
>  
> 
> DEBUG: Executing python function do_fetch
> 
> DEBUG: Executing python function base_do_fetch
> 
> ERROR: Error executing a python function in exec_python_func()
> autogenerated:
> 
>  
> 
> The stack trace of python calls that resulted in this exception/failure was:
> 
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
> 
>      0001:
> 
> *** 0002:base_do_fetch(d)
> 
>      0003:
> 
> File: '/sdd/peter/Yocto/TEST/sources/poky/meta/classes/base.bbclass',
> lineno: 134, function: base_do_fetch
> 
>      0130:    if len(src_uri) == 0:
> 
>      0131:        return
> 
>      0132:
> 
>      0133:    try:
> 
> *** 0134:        fetcher = bb.fetch2.Fetch(src_uri, d)
> 
>      0135:        fetcher.download()
> 
>      0136:    except bb.fetch2.BBFetchException as e:
> 
>      0137:        bb.fatal(str(e))
> 
>      0138:}
> 
> File:
> '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/__init__.py',
> lineno: 1535, function: __init__
> 
>      1531:
> 
>      1532:        for url in urls:
> 
>      1533:            if url not in self.ud:
> 
>      1534:                try:
> 
> *** 1535:                    self.ud[url] = FetchData(url, d, localonly)
> 
>      1536:                except NonLocalMethod:
> 
>      1537:                    if localonly:
> 
>      1538:                        self.ud[url] = None
> 
>      1539:                        pass
> 
> File:
> '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/__init__.py',
> lineno: 1214, function: __init__
> 
>      1210:            logger.warning('Consider updating %s recipe to use
> "protocol" not "proto" in SRC_URI.', d.getVar('PN'))
> 
>      1211:            self.parm["protocol"] = self.parm.get("proto", None)
> 
>      1212:
> 
>      1213:        if hasattr(self.method, "urldata_init"):
> 
> *** 1214:            self.method.urldata_init(self, d)
> 
>      1215:
> 
>      1216:        if "localpath" in self.parm:
> 
>      1217:            # if user sets localpath for file, use it instead.
> 
>      1218:            self.localpath = self.parm["localpath"]
> 
> File: '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/hg.py',
> lineno: 70, function: urldata_init
> 
>      0066:            ud.proto = 'file'
> 
>      0067:        else:
> 
>      0068:            ud.proto = "hg"
> 
>      0069:
> 
> *** 0070:        ud.setup_revisons(d)
> 
>      0071:
> 
>      0072:        if 'rev' in ud.parm:
> 
>      0073:            ud.revision = ud.parm['rev']
> 
>      0074:        elif not ud.revision:
> 
> File:
> '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/__init__.py',
> lineno: 1244, function: setup_revisons
> 
>      1240:
> 
>      1241:    def setup_revisons(self, d):
> 
>      1242:        self.revisions = {}
> 
>      1243:        for name in self.names:
> 
> *** 1244:            self.revisions[name] = srcrev_internal_helper(self,
> d, name)
> 
>      1245:
> 
>      1246:        # add compatibility code for non name specified case
> 
>      1247:        if len(self.names) == 1:
> 
>      1248:            self.revision = self.revisions[self.names[0]]
> 
> File:
> '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/__init__.py',
> lineno: 1109, function: srcrev_internal_helper
> 
>      1105:
> 
>      1106:    if srcrev == "INVALID" or not srcrev:
> 
>      1107:        raise FetchError("Please set a valid SRCREV for url %s
> (possible key names are %s, or use a ;rev=X URL parameter)" %
> (str(attempts), ud.url), ud.url)
> 
>      1108:    if srcrev == "AUTOINC":
> 
> *** 1109:        srcrev = ud.method.latest_revision(ud, d, name)
> 
>      1110:
> 
>      1111:    return srcrev
> 
>      1112:
> 
>      1113:def get_checksum_file_list(d):
> 
> File:
> '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/__init__.py',
> lineno: 1500, function: latest_revision
> 
>      1496:        if not hasattr(self, "_latest_revision"):
> 
>      1497:            raise ParameterError("The fetcher for this URL
> does not support _latest_revision", url)
> 
>      1498:
> 
>      1499:        revs = bb.persist_data.persist('BB_URI_HEADREVS', d)
> 
> *** 1500:        key = self.generate_revision_key(ud, d, name)
> 
>      1501:        try:
> 
>      1502:            return revs[key]
> 
>      1503:        except KeyError:
> 
>      1504:            revs[key] = rev = self._latest_revision(ud, d, name)
> 
> File:
> '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/__init__.py',
> lineno: 1512, function: generate_revision_key
> 
>      1508:        latest_rev = self._build_revision(ud, d, name)
> 
>      1509:        return True, str(latest_rev)
> 
>      1510:
> 
>      1511:    def generate_revision_key(self, ud, d, name):
> 
> *** 1512:        key = self._revision_key(ud, d, name)
> 
>      1513:        return "%s-%s" % (key, d.getVar("PN") or "")
> 
>      1514:
> 
>      1515:class Fetch(object):
> 
>      1516:    def __init__(self, urls, d, cache = True, localonly =
> False, connection_cache = None):
> 
> File: '/sdd/peter/Yocto/TEST/sources/poky/bitbake/lib/bb/fetch2/hg.py',
> lineno: 235, function: _revision_key
> 
>      0231:    def _revision_key(self, ud, d, name):
> 
>      0232:        """
> 
>      0233:        Return a unique key for the url
> 
>      0234:        """
> 
> *** 0235:        return "hg:" + ud.moddir
> 
>      0236:
> 
>      0237:    def build_mirror_data(self, ud, d):
> 
>      0238:        # Generate a mirror tarball if needed
> 
>      0239:        if ud.write_tarballs == "1" and not
> os.path.exists(ud.fullmirror):
> 
> Exception: AttributeError: 'FetchData' object has no attribute 'moddir'
> 
>  
> 
> DEBUG: Python function base_do_fetch finished
> 
> DEBUG: Python function do_fetch finished
> 
> ERROR: Function failed: base_do_fetch
> 
>  
> 
> *Peter Smith*
> 
> 
> ------------------------------------------------------------------------
> CONFIDENTIALITY : This e-mail and any attachments are confidential and
> may be privileged. If you are not a named recipient, please notify the
> sender immediately and do not disclose the contents to another person,
> use it for any purpose or store or copy the information in any medium.
> 
> 

