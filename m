Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E782BE00546; Tue, 17 Jan 2017 06:59:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [198.143.161.30 listed in list.dnswl.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1565]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4753 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Jan 2017 06:59:54 PST
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [198.143.161.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62829E004A0
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 06:59:54 -0800 (PST)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se7.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1cTSNV-00040a-Nz
	for yocto@yoctoproject.org; Tue, 17 Jan 2017 05:56:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:Cc:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=GUtwKmeMkKgDFkfDfCIzNVtA/bgwkwPvAs6NSJeScPQ=;
	b=BcXQFmfV7HwF3nad/BoGZwlfyT
	VKRktTyJBGerGj3rqN/G5L2h8b8adhldv+mTuBdGrIkHlnlayhgf1ITsE+re6LZPWAtM4uFfD9yUJ
	RJ/qN3K1jKafjf4pmipYNysjJRFe83mRZ30x1vskF6zV4///CSV99us0K8+mPfH+vwB0=; 
Received: from [127.0.0.1] (port=45202 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1cTSNV-00012L-4n; Tue, 17 Jan 2017 05:56:41 -0600
MIME-Version: 1.0
Date: Tue, 17 Jan 2017 05:56:41 -0600
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <f5df85a01eecd22894f83c66b3c3884c@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.1.7
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.27)
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhJWdbsu/PGngF
	sP6QHv82uiZTaFCDa9A7C/jInU0NPk5o9qUFE8XEupMgL9lQhc5MhXE3Kd6zku9YzkFh73wKYPbj
	aPZXen3YvWHScRpGw7AMebEgKQmdigT2SqdPgCRDW0zmIkNrImXiVOsNfYFDjefHzJ6mVE7ewsip
	SVIfs4bRTRbdwQaG5TGsQPmdEtKTYb30GV/LTTOHpImWPCex54onRWlBmDnjzYnePIvOXJvlgTl6
	fJxyntEfhZCKje4ZpF5GFn0VGJE1yVv3RLa3Fi7/+fOTvqVqTiiM4NskccT/51HuFxEGlQ85t+9R
	s1HAWpqH02ENgZUUUrBwtgAspuoAEMCxBXuH+MlsW5Hvjb34fCyRIMupElmSLIG80pM6xBjqU7yU
	/iv1FJDtCzXYFT8sJIOjW5RNgDi+Om2uksEu//nzk76lak4ojODbJHHEf1tgk/FI+C5mQXdfxOSX
	bwoAYmcdpnyHSuRXmhOk2PvNXXvCoqHrC8VNYHdZTN9A6e4Zua+qm6zs49H5LaZzSMesr1PnPryu
	VKjB4aKIPn7rk0ddJ6PPSAVfBV147b50ZmWRlGDEKzlmcJohf5ZCEfiVz7XtMUVSq7cn4yEc4dYl
	oHPxm0j3XNJOib0a46boIHcD2G1yAgPl/VKfAzd5t8OEWO3u9MCHzXiSW9itZ39qj69U3bSV11sY
	EWWoU3X8iOof+kYC9SBQv2XDzgKaVnmoaJWXmt7UlGnOn2qM5H/CHJalEUDn01MA3vkYtNXyLm7H
	cH58QZhCmcoFYFghx8JphFKEtikJ8+mEAuMVEz5hkmJr/+tlpu01QYwcwG2k
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Recommended-Action: accept
Cc: robert.berger@reliableembeddedsystems.com
Subject: "external"/"internal" SDK
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
X-List-Received-Date: Tue, 17 Jan 2017 14:59:57 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

A client would like to dish out an SDK to their customers, but only with 
a subset of header files compared to those they use internally.

internal SDK:
As it is right now when you build an sdk with e.g. bitbake whatever -c 
populate_sdk

external SDK:
everything the same as above, but for some packages there should be only 
libraries - no header files.

I guess I'm not the first one who needs something like this.

How would you do something like this the "Yocto way"?

Regards,

Robert

