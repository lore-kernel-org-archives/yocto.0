Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A684E013A6
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 04:48:41 -0800 (PST)
Received: from mail-ee0-f72.google.com ([74.125.83.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 04:48:08 -0800
Received: by mail-ee0-f72.google.com with SMTP id c4so4801042eek.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 04:48:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=lpNkRObIlWSQftlCRDpoF69QVahiXPGxT4OUKEC206o=;
	b=oEmjlfS6Nbtea4b7Euak/9dCUx14a2znj8u6nVchhYTqPWGt8xxK2QFBOgj5S0GvfJ
	+18yQNE6sFAXuD1C2NW0O1BUQoXUGjphNjiqv7J1jpcd3V62GB5T8DM05lr1YvNnSUOj
	qtA4dHXa6GCLkgnBudzpwUise4BBNmfbfOfwfTA5TOiR2bj6G2IGNeo1wviEUFS5Dl29
	vO4nkfAGxHKy0UZ3zepreVcZXc/CFr8FBPZd5NWtYo+avOGEZ4SqQNoMsfyNheFCEcpq
	xBAoFEyiNy/z0+PcKDXx0v6a+cqWHVlo6LqtrM+tdkJVs5Ghn13WRFzjpVhQ+F11eq2t
	WqfA==
Received: by 10.216.135.24 with SMTP id t24mr3176848wei.147.1352119715467;
	Mon, 05 Nov 2012 04:48:35 -0800 (PST)
Received: by 10.216.135.24 with SMTP id t24mr3176840wei.147.1352119715037;
	Mon, 05 Nov 2012 04:48:35 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fa9sm11451350wib.5.2012.11.05.04.48.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 05 Nov 2012 04:48:34 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com,
	nitin.a.kamble@intel.com
Date: Mon,  5 Nov 2012 12:47:17 +0000
Message-Id: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnzhT19Ah/qeS8iiOTU+4d5L5PfhqvQQXz5aodLv8DJxa9Vb29gW3LRdvBU5g2IjpAu3QBkEo84UuRWkQirsgLbnyeiEkY0TVxrX7idRi6WMC7ErXElDsbs27Hef6ILUI6jhM0QAtsE8A+vFn+8NWx5ipl6HQ==
Cc: yocto@yoctoproject.org
Subject: [meta-intel] Add Xorg ABI dependencies
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
X-List-Received-Date: Mon, 05 Nov 2012 12:48:41 -0000


Hi,

Following are patches against master (*not* danny) to add runtime dependencies
on the Xorg ABI version to the binary drivers, a symbol that the Xorg server
provides.

This means that mismatching server/driver ABIs becomes a package dependency
issue and thus image-time error, instead of a boot time error.

Note that these ABI versions are calculated from the Xorg server version that
the drivers were compiled against and need to be verified and updated manually
when the driver is upgraded.

Ross


