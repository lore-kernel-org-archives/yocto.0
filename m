Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F152E003D2
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 11:58:51 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id c10so846914wiw.8
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 11:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=+pIrS2srn3KmXgPL4x4TBJyXhQU5b292r+3rn7Crxeg=;
	b=M8izihwE8JWPeUHF4fNe2/X/SaXT0c6zZYhEpeqeP+mfPn4iqznBy9oQbRLqprDmYF
	Jz15tUe6thbLkcs41onriHBBRf9o5YoQC2K4uSPwPVfAEW3xZPSA13+jm9BhcssePmA7
	fAZYEdOd/tfoVGlCB+AmVTubOWk6bAPwj3nDiP75DkE1tgCNHtYcOPjSTufOG8Y6DwFl
	88GjvDUAEjgkDD78bmgVBch8ugexiJMC3dHBURBMP4vGInf0JGuPEKZxVEcA6PYL9GvA
	/QiV+g/ktP1iAjo1pRnAFuTJRTYYED4KYpnPTlFEN9anOGvDI2Jq7VQNF+cSb5b3uUEN
	UrJQ==
X-Gm-Message-State: ALoCoQklbylapNgFh98lu1pC9jeOqrSgBKI262wzWt0itehrFmBIWWknwEGGD0gumzlpfNDXNs1L
X-Received: by 10.180.36.169 with SMTP id r9mr3314982wij.20.1378321130522;
	Wed, 04 Sep 2013 11:58:50 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id a8sm6207273wie.6.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 11:58:49 -0700 (PDT)
Message-ID: <522782E7.8080509@vtkloud.com>
Date: Wed, 04 Sep 2013 20:58:47 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: adding specific config files
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
X-List-Received-Date: Wed, 04 Sep 2013 18:58:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

In my project, we have our own rpm repository and we use smartpm on the 
target.
In order to have the target setup with the repo out of the box, we of 
course have added "package-management" in IMAGE_FEATURES. Now I'd like 
the target to have our repo address already configured.

The best way I found was to create a recipe in my overlay and hacking 
the system a little bit this way :
do_install() {
    if 
${@base_contains('IMAGE_FEATURES','package-management','true','false',d)}; 
then
         install -d ${D}/${sysconfdir}
         install -m 644 ${WORKDIR}/config.in ${D}/var/lib/smart/config
    fi
}

where "config.in" is a simple copy of the non-human readable version of 
smartpm config file, generated manually on the target.

I was wondering if there would be a better way such as do not test in 
the do_install, but rather make the recipe dependent on the 
"package-management" image feature ? (so that do_install wouldn't even 
be considered if the option is not set), or any other smarter idea.

Thanks a lot,

Regards
Jay


