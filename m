Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB50CE01447
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 15:39:09 -0700 (PDT)
Received: from mail-qa0-f48.google.com ([209.85.216.48])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 07 Sep 2012 15:38:55 -0700
Received: by qady1 with SMTP id y1so11436qad.14
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 15:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=YRkXbnIYSfiyG27c+5pKKwoLTcC65V+Gwryr21uH1/s=;
	b=PPWTOihwwzHjnDIXN4etYM+Zc0/gG93nYBi69riOLebdQOVtHCIR7z+xun0oQdht1J
	PcSak7/5J3O3ZPcx3+pObh0gw4TgeZW0/i9bfPxbz1aOYKl6YmDiICdFVOCfYpP4dmuM
	DHEXI7UaxYf6TNQ19atSynR/Gm5BHhsO1zn2zOXpl+1gSZM9ukr1BkVZ+SgGiS31wSxd
	cyox2HF9skgLUSm5usqKA6iIZ6BGF2JY6rPGchyDK2VXQrealHUGwJNL4BNIu0glR+n2
	7VvoHF84bh9FnzcbaIeaj8Qp3gpZhR4EJrAwvJbmxrPCmn2pkVXqKo1myPCplTnMg/0f
	gUFQ==
MIME-Version: 1.0
Received: by 10.224.175.8 with SMTP id v8mr9287721qaz.66.1347057533984; Fri,
	07 Sep 2012 15:38:53 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Fri, 7 Sep 2012 15:38:53 -0700 (PDT)
Date: Fri, 7 Sep 2012 15:38:53 -0700
Message-ID: <CAPhnLPBvsrvypAHmhMEwUnROxT73pJw7izXkrSNx0PM=4TrfQA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnaczPo0Z7D/52f4MgVbW5hJnXg0v0N6c3ANe4iYyAcl4wQVdX5iK2Kr5WHiT0sIfBwCFx8
Subject: [PATCH][eclipse-poky] setup.py: Change main eclipse SDK repo to point to yocto
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
X-List-Received-Date: Fri, 07 Sep 2012 22:39:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

The main eclipse download site has been hard to connect to
for many users. This sets up the main setup script to use a
mirror of the eclipse tarballs.

One note of importance here, is that we will have to maintain
a mirror of all SDK releases we wish to utilize.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/setup.sh |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 5a928f4..b7e2a54 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -66,7 +66,7 @@ if [ ! -f
eclipse/plugins/org.eclipse.swt_3.100.0.v4233d.jar ]; then
   fi
   # Eclipse SDK: Need the SDK so we can link into docs
   echo "Getting Eclipse SDK..."
-  wget "http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
+  wget "http://downloads.yoctoproject.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz"
   tar xfz eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz || err_exit $?
"extracting Eclipse SDK failed"
   rm eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
   cd "${curdir2}"
-- 
1.7.5.4

