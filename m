Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86E67E00CA5; Mon, 14 Aug 2017 19:15:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B3D2E00B8E
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 19:15:39 -0700 (PDT)
Received: by mail-pg0-f52.google.com with SMTP id i12so7621163pgr.3
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 19:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=c/LIluS6YsBHh5B5SF9eO2iyb8qJL9MaaXvWS22yeC0=;
	b=ZI3FN7UOtP9RteejH/lySwmV3KdmyS6QrZqHNjcnwvw6GsIG/MPEIkssEe0tnECgwz
	8a4GjCemk5JltQotk2LJh7M8otetw/uhAN4Ul/oCyRQuTeAfY+gz2SdIW5HAxDtIO7w0
	t2ohkSUPpmXjJBSYHkW3vVYZ+muA1FsRIe5OKEpUCikldUwtnnwnfT+sPwNZ66LFhW8Q
	SmOIwE1jPKg7B2ImiAbG2mbo3C/KqbpzDH+lN8RsZ8WzEPBFEwhObPZuicFqM/kEtbKR
	O4rrOi4LkRbK6q2oVXpf5J7f/rSSNQjYymEuaS4nLH685avWEe3KtVPBpBD+d7jGjj39
	ujMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=c/LIluS6YsBHh5B5SF9eO2iyb8qJL9MaaXvWS22yeC0=;
	b=RFGypL/zg1m05jyIcHe6s9L4F4SS1GWIPs7JtjB8JRiwCEejg0z/aAsayg86jAe6ed
	ncsJulqgAD5HOSKFDrzuu+tzkwiu6K4PwZpJjLvnw2Yp5WF5LpBDa6FZL8urrALD63N3
	U/B++rVR/l4SQUd7Obzgk10rdbhdPzZzjCauDy7GP3OVHXe9PIWdClEiES16z5XIYJYB
	w2ylVIznz8JqudeFtBnCEIL/KzZrDnmGmo4fLTXS9R8XaZL1J9pnpeO7YaZefkOs+daP
	VAyMchsFFsDPZ1RwNw0udgPksprlo/4VKHfIDZYK0igaJSMijB0g+aW/mwcAjL5A3QU8
	jDoA==
X-Gm-Message-State: AHYfb5h7ru/NDedrzRFqkJznFl9No3T/R6qV3Hl4zaldco5Ti0YYiXfo
	V9A7Mh9d+LIMzqhHTgE=
X-Received: by 10.84.195.131 with SMTP id j3mr29255235pld.147.1502763338489;
	Mon, 14 Aug 2017 19:15:38 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	139sm12600586pgh.60.2017.08.14.19.15.35 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Aug 2017 19:15:37 -0700 (PDT)
To: "N:" <yocto@yoctoproject.org>
From: Riko <antonius.riko@gmail.com>
Message-ID: <a94a076e-50a3-bf78-e628-15128682128f@gmail.com>
Date: Tue, 15 Aug 2017 10:15:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: How can I use PREFERRED_VERSION_ ?
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
X-List-Received-Date: Tue, 15 Aug 2017 02:15:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dear Yocto Team Members,

How can I use PREFERRED_VERSION_ ?


ERROR: Multiple versions of openssl are due to be built 
(/home/bianchi/poky/openembedded-core/meta/recipes-connectivity/openssl/openssl_1.1.0f.bb 
/home/bianchi/poky/meta/recipes-connectivity/openssl/openssl_1.0.2k.bb). 
Only one version of a given PN should be built in any given build. You 
likely need to set PREFERRED_VERSION_openssl to select the correct 
version or don't depend on multiple versions.


Regards,

Riko


