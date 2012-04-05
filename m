Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 870B0E0137C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 16:34:07 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 05 Apr 2012 16:34:06 -0700
Received: by lahi5 with SMTP id i5so1755029lah.25
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 16:34:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=rgqoKMaQVSj2b0a0m0ludxMa3UfUYiUSVUexql+jUQg=;
	b=JI2+zgTs2Q4rQPebPPDkMJtRnhUnD/Lk+hpnZuug0utcAQVJ56JSCamic7Uq9uH706
	PDtqC3vUk0XyLgSrJLDxhI7MJTbG0Nv5BT5x5kzGvmALRooxeNX02KSnlnEP1puhQIHC
	Ml1gFSwWP8xaqqmDfyPICLVDONDIUGhWSWlOKT8oaqTGejGDULElWu0DSPztoXJIdY8T
	xzkSQoy7yx7gGcBFhzMshBku9hBarCTwDh7LHPf2AlSU3dZvc0rCAAIr7ZBbH9FTlU8Q
	AioO48hxvGRUezh57VKa5WLyaH6sbewU1doJWU+Mdmx0QDv6D/7IwhIrsNHtrl1t9y6N
	jdQQ==
MIME-Version: 1.0
Received: by 10.152.105.211 with SMTP id go19mr5668866lab.51.1333668844442;
	Thu, 05 Apr 2012 16:34:04 -0700 (PDT)
Received: by 10.112.102.5 with HTTP; Thu, 5 Apr 2012 16:34:04 -0700 (PDT)
Date: Thu, 5 Apr 2012 16:34:04 -0700
Message-ID: <CAPhnLPAqn4f4M7zPKJCv5DtqwA3+48681ebQMOd2VnMWJ_T=vg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQli9rRnVaB6zng/a/clA1gZyGfaQ3Vp+YwoaMAKUJbqKVOiqznf4a7SvdW44qWgrzGwNoXG
Subject: 1.2_M4.rc2 build is out and ready for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Apr 2012 23:34:07 -0000
Content-Type: multipart/alternative; boundary=f46d04083f4bb8933b04bcf6f934

--f46d04083f4bb8933b04bcf6f934
Content-Type: text/plain; charset=ISO-8859-1

All,

Sorry for the delay with rc2. I did a quick rebuild to incorporate some
meta-qt3 fixes. We now have a buildout to test. It is available at:

http://autobuilder.yoctoproject.org/pub/nightly/20120405-1

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d04083f4bb8933b04bcf6f934
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>Sorry for the delay with rc2. I did a quick rebuild to incorpor=
ate some meta-qt3 fixes. We now have a buildout to test. It is available at=
:<br><br clear=3D"all"><a href=3D"http://autobuilder.yoctoproject.org/pub/n=
ightly/20120405-1">http://autobuilder.yoctoproject.org/pub/nightly/20120405=
-1</a><br>
<br>-b<br><br>-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build and Relea=
se<br>

--f46d04083f4bb8933b04bcf6f934--
