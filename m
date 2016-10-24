Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B187E00C1E; Mon, 24 Oct 2016 06:14:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F42E00791
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 06:14:24 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id 128so99128258pfz.0
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 06:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=kPge+69mrkPkYXU200LW+6h+hFFVF4GNeEVtHo9VPVM=;
	b=RSU+MZT8xVspxZlAyTUkr9eWuk12BwcEEJnFmjB5X/WcgPWM+GcQ98MqtDRDWtZNbo
	Fu5DHPpMQhFlnhK+3O2MpjgYncacz4M/uZGfB27x4oXcAsoY+vaZsMd4ajliMDa06rBD
	pf7JskbxWyyHfsi5pdncD4J5jssj2+vmrpsXXTte+O1Asp9X9QRXzJiLBjyv+GSiGMLk
	QZuy3XHiSRmfNztHYf0g0mbinElkQLLYVspbhz/AqB3f8yES2PFc8H+3zkWZuNZXl9/Y
	qU1MAmxYkOXc5N5eeUB8rNPaFszmZIDDO//lvZWrb+Ira1zFudVa9lV/vPsUavUeNOdK
	ibYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=kPge+69mrkPkYXU200LW+6h+hFFVF4GNeEVtHo9VPVM=;
	b=irB9UoCtuQT1EUJeCqPzJHeTcH0XhFFw7lf/cfNVuF+mDaViPXbrLwyxGLgSGbkXkj
	zOPi4Wzy5KTJJV4MhP7+jgzzIxuF2HviCXRFALa6qVcPXj2QO/GJ3gOeR3WBuTrhb9pp
	t69y8sesNpr7lfmwsZXfoS2ddZNBdL+CtbsOMcijmte1SA8tylqwLcDbeCia5DZ0Bg4/
	co1RhjgZm5+hZh+WM+bRJi4c+O9He5ysy1JLicaJxGqrpybQzkal0toUzKtuqB+Wgz5+
	v2IivOLa0Za15AFuwfUKjpUfB0dhLvcvkaBvvqgYTD+DSI/X7H+1ObWHA4ijYE00oAPl
	vOfw==
X-Gm-Message-State: ABUngvdxWmVVD7v93c2mKT+9enTZWgP2/CHKu0dnyqtqMj8S06bUb1rwm4dgltxvlYYnV5PI
X-Received: by 10.36.59.4 with SMTP id c4mr2046981ita.122.1477314863747;
	Mon, 24 Oct 2016 06:14:23 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8EFC0.dip0.t-ipconnect.de. [93.232.239.192])
	by smtp.gmail.com with ESMTPSA id
	l62sm1345627itc.12.2016.10.24.06.14.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Oct 2016 06:14:22 -0700 (PDT)
Message-ID: <1477314859.21499.20.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Blaettler, Michael" <michael.blaettler@siemens.com>
Date: Mon, 24 Oct 2016 15:14:19 +0200
In-Reply-To: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
References: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: curl-native and ca-bundle
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
X-List-Received-Date: Mon, 24 Oct 2016 13:14:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-10-24 at 07:20 +0000, Blaettler, Michael wrote:
> Hi all
> 
> We just had an issue in regard to curl-native.
> By default curl is configured with the "--with-ca-bundle=${sysconfdir}/ssl/certs/ca-certificates.crt" flag.
> In case curl-native is builded the ${sysconfdir} of the current project is compiled into the binary. Due to sstate caching the binary will be reused in other projects, but the ca-bundle is still loaded from the first project. As soon as the first project (where the initial build took place) is deleted, curl-native won't be able to fetch from HTTPS sources, because the ca-path is invalid.
> 
> As a quick solution I removed the "--with-ca-bundle" configure option in native builds and curl is now loading the default certificate chain of the build host.
> 
> Does anybody found simmilar issues in other recipes?

Yes, we ran into the same issue with a CVE check tool, which also uses
libcurl.

> How do you handle them?

We had to patch the tool so that it can override the CA cert path and
then explicitly override the builtin path at runtime, see:
https://github.com/01org/meta-security-isafw/commit/d844f370d5847da08fef83b916e621ebf6b5fa37

Some colleagues recently noticed that the version of cve-check-tool in
OE-core lacks that patch. I'm not sure whether that was reported,
though. André, Ismo?

> Is there a common approach?

No, not really. Patching binaries was mentioned, but it wasn't clear how
to do that in practice.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




