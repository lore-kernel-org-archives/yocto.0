Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36408E00871; Fri, 13 Mar 2015 09:14:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11D77E008BC
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 09:14:24 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id hy10so8146690vcb.4
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 09:14:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=YtpfpJuoJoAzkZorDY16TUmZQQKlRO2oJYcirhm+ibM=;
	b=JK3TOctWryjBXtf+PVzGxXOyX5DDvGA5HNKimK38xq7+empaap+X2Boom/5VVQKFYE
	to+D//ZlHrWKQ+1eCp6lIv96NclSr5NVfjZaARKifw+ouoXWIu291+Kqnc26L5fXBEe/
	nzSURdMyMWTR8qk7GD5siVAhfsmld5bNbj8byDbcMy/YjE0/8w3PlPayuBADZF3H0o0V
	dImENjosNvGCI2jie2q+gO4cN16bLF8LG7ikaYCqIcQ2K7lMWxkUIzvU+zSBZOZhs85e
	PgQcSJGaGg98XXVu0nPphNjmP04xj6LWpbVBVnv0LkJiWqO02JI6vTdtLDLqMavxoEV3
	Mo4A==
X-Gm-Message-State: ALoCoQkwrTbT3Pfj22nXkBdBMsv4zjOqKsYBleqa4RLfDyMFD8N/rlMOI624I7xIiNLw894hZhxR
MIME-Version: 1.0
X-Received: by 10.52.12.169 with SMTP id z9mr52668988vdb.69.1426263264245;
	Fri, 13 Mar 2015 09:14:24 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Fri, 13 Mar 2015 09:14:24 -0700 (PDT)
Date: Fri, 13 Mar 2015 16:14:24 +0000
Message-ID: <CAPhnLPBA59ob2iuJxiq+CmhEhYHZupzkANAfLLxouHpL-xqKmQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] 1.8_M3 released
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
X-List-Received-Date: Fri, 13 Mar 2015 16:14:29 -0000
Content-Type: text/plain; charset=UTF-8

The third milestone release for Yocto Project 1.8 is available for download now.

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.8_M3/

Thank you everyone for your contributions.

eclipse-poky/juno-master 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky/kepler-master b4d75601847b4c5b060265a37b47c2a9642da62d
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
poky 5c1c8af083ca7b57cc339d16ce0513b27c5dac90

Test report at
https://wiki.yoctoproject.org/wiki/WW10_-_2015-03-03_-_Full_Pass_1.8_M3.rc3

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

