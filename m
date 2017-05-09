Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C586E00ACD; Tue,  9 May 2017 08:12:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C94C9E00A48
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 08:12:16 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id l9so3219683wre.1
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 08:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=nUUAlMqjeXFyMKbBIuwcqaa5TB7q2XQnokb20zwTZ8I=;
	b=Jd4AVjKJgT7v59K7Sa9gK55wKoszyk5ucrzqBQY5g4gx6RlvVrEbQB/7EXnFIfcnx6
	lMHgu0RmAfh3KVBSxg+T+40DYL75mSom51de4JtoyQ7z88dN+046VvFoU9Z+Rm53Ul9Q
	IHkvoy5PT93Wpzpff8/NcpueqiZLOcwDSzQhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=nUUAlMqjeXFyMKbBIuwcqaa5TB7q2XQnokb20zwTZ8I=;
	b=eafsbbFmtlAxKEx+BnH0Wdm6v/6HVJhZzFPAcB4/56WPMjdQNMtx9JpDTxi8QbG3Oa
	iMj8MCNYE3K0eb9NCETphk+p578Elj6ohoMy5bfvczi9i6IYIIrFnNLFNRYJaa/FZS69
	hILaRcBi91CKckvYlPzYi4nH/9i83/WnBFWIux+SePDra3L3ScnR8p/HbAzWpR0nQEcD
	OeDNN958aeduCRvI/Hf8dIvFElGY/477EabM2Xk+0A55t7Z1ppy1rr75Q+0uIo26SCYO
	T6ODQ9ktbdZbje/yGdcFl41KImotdME2sl8lj8heZsj3HL02FMzDsO6Jz/uHMx4tWFAd
	KjKA==
X-Gm-Message-State: AODbwcDLMNHVIz5W1FMiixqk6SbYvexWzM/zbEHKhl/4abbJ73VJOnU6
	fwtWcB1hqsEXLdU5Vs4=
X-Received: by 10.28.185.10 with SMTP id j10mr1457398wmf.56.1494342735634;
	Tue, 09 May 2017 08:12:15 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-175-27.w92-135.abo.wanadoo.fr.
	[92.135.46.27])
	by smtp.gmail.com with ESMTPSA id t30sm198695wrc.24.2017.05.09.08.12.14
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 May 2017 08:12:14 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
X-Enigmail-Draft-Status: N1110
Message-ID: <c08863c7-b1da-a318-c4a5-02115ededba2@fridu.net>
Date: Tue, 9 May 2017 17:12:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: how to activate tpm
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
X-List-Received-Date: Tue, 09 May 2017 15:12:20 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Hello,<br>
      <br>
      I am trying to get tpm working on a Minnowboard and a Joule.<br>
      I have enabled tpm in meta-security.<br>
      I can see that the Kernel config looks good (see extract bellow)<br>
      tpm is enable in the BIOS (fails with TPM&gt;PTT or dTPM 2.0)<br>
      BUT i still cannot see my tpm device in /sys/class/tpm<br>
      <br>
      Has anyone succeeded to enable tpm with meta-security ?<br>
      If yes, I would be interested to know how you have done.<br>
    </font>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre

------- log device not visible ----------
tcsd -f
TCSD TDDL ERROR: Could not find a device to open!
root@intel-corei7-64:~# modprobe -D tpm                                                                                                                                                
builtin tpm
root@intel-corei7-64:~# modprobe -D tpm_tis
builtin tpm_tis
root@intel-corei7-64:/tmp# ls /sys/class/tpm                                                                                                                                           
root@intel-corei7-64:/tmp# 

--------- kernel config extract --------------

CONFIG_HW_RANDOM_TPM=m
# CONFIG_NVRAM is not set
# CONFIG_R3964 is not set
# CONFIG_APPLICOM is not set
# CONFIG_MWAVE is not set
# CONFIG_RAW_DRIVER is not set
CONFIG_HPET=y
CONFIG_HPET_MMAP=y
CONFIG_HPET_MMAP_DEFAULT=y
# CONFIG_HANGCHECK_TIMER is not set
CONFIG_TCG_TPM=y
CONFIG_TCG_TIS_CORE=y
CONFIG_TCG_TIS=y
# CONFIG_TCG_TIS_SPI is not set
# CONFIG_TCG_TIS_I2C_ATMEL is not set
# CONFIG_TCG_TIS_I2C_INFINEON is not set
# CONFIG_TCG_TIS_I2C_NUVOTON is not set
# CONFIG_TCG_NSC is not set
# CONFIG_TCG_ATMEL is not set
# CONFIG_TCG_INFINEON is not set
CONFIG_TCG_CRB=y
CONFIG_TCG_VTPM_PROXY=y
# CONFIG_TCG_TIS_ST33ZP24_I2C is not set
# CONFIG_TCG_TIS_ST33ZP24_SPI is not set
# CONFIG_TELCLOCK is not set
CONFIG_DEVPORT=y
# CONFIG_XILLYBUS is not set



</pre>
  </body>
</html>

