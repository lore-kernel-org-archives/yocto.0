Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68700E00BE7; Fri, 26 Aug 2016 07:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA19E00BC1
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 07:27:56 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP; 26 Aug 2016 07:27:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,581,1464678000"; 
   d="scan'208";a="1524968"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.3.89])
	by orsmga004.jf.intel.com with ESMTP; 26 Aug 2016 07:27:54 -0700
Message-ID: <1472221673.4205.19.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>, yocto@yoctoproject.org
Date: Fri, 26 Aug 2016 15:27:53 +0100
In-Reply-To: <1471937749-25001-1-git-send-email-dmitry.rozhkov@linux.intel.com>
References: <1471937749-25001-1-git-send-email-dmitry.rozhkov@linux.intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] swupd-client_git.bb: Make pinned pubkey configurable
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
X-List-Received-Date: Fri, 26 Aug 2016 14:28:01 -0000
X-Groupsio-MsgNum: 31661
Content-Type: multipart/mixed; boundary="=-2f7gAnvaFNDyrXHfxUvd"

--=-2f7gAnvaFNDyrXHfxUvd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-08-23 at 10:35 +0300, Dmitry Rozhkov wrote:
> SWUPD server may move to a new location where a different pubkey
> needs to be used and the hardcoded one won't work.
> 
> This makes pinned pubkey configurable.

This change sounds good but fails to build here.

swupd-client do_install fails with the attached log.

Thanks,

Joshua

> Signed-off-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
> ---
>  .../Make-pinned-pubkey-configurable.patch          | 118
> +++++++++++++++++++++
>  recipes-core/swupd-client/swupd-client_git.bb      |   3 +
>  2 files changed, 121 insertions(+)
>  create mode 100644 recipes-core/swupd-client/swupd-client/Make-
> pinned-pubkey-configurable.patch
> 
> diff --git a/recipes-core/swupd-client/swupd-client/Make-pinned-
> pubkey-configurable.patch b/recipes-core/swupd-client/swupd-
> client/Make-pinned-pubkey-configurable.patch
> new file mode 100644
> index 0000000..4326a58
> --- /dev/null
> +++ b/recipes-core/swupd-client/swupd-client/Make-pinned-pubkey-
> configurable.patch
> @@ -0,0 +1,118 @@
> +From 6792cfef0ebfbe83e41bc81df6bc675604d7c943 Mon Sep 17 00:00:00
> 2001
> +From: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
> +Date: Tue, 16 Aug 2016 10:55:15 +0300
> +Subject: [PATCH] Make pinned pubkey configurable
> +
> +The server may move to a new location where a different pubkey
> +needs to be used and the hardcoded one won't work.
> +
> +This patch makes pinned pubkey configurable.
> +
> +Upstream-Status: Submitted [https://github.com/clearlinux/swupd-clie
> nt/pull/110]
> +
> +Signed-off-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
> +---
> + configure.ac    |  2 ++
> + include/swupd.h |  1 +
> + src/curl.c      |  2 +-
> + src/globals.c   | 14 ++++++++++++++
> + 4 files changed, 18 insertions(+), 1 deletion(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index 83007aa..883553a 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -114,6 +114,7 @@ AH_TEMPLATE([LOCK_DIR],[Directory for lock
> file])
> + AH_TEMPLATE([BUNDLES_DIR],[Directory to use for bundles])
> + AH_TEMPLATE([UPDATE_CA_CERTS_PATH],[Location of CA certificates])
> + AH_TEMPLATE([MOTD_FILE],[motd file path])
> ++AH_TEMPLATE([PINNED_PUBKEY_PATH],[Path to pinned public key])
> + 
> + if test "$enable_linux_rootfs_build" = "yes"; then
> + 	AC_DEFINE([SWUPD_LINUX_ROOTFS],1)
> +@@ -124,6 +125,7 @@ if test "$enable_linux_rootfs_build" = "yes";
> then
> + 	AC_DEFINE([BUNDLES_DIR],["/usr/share/clear/bundles"])
> + 	AC_DEFINE_UNQUOTED([UPDATE_CA_CERTS_PATH],["$certs_path"])
> + 	AC_DEFINE([MOTD_FILE],["/usr/lib/motd.d/001-new-release"])
> ++	AC_DEFINE_UNQUOTED([PINNED_PUBKEY_PATH],["${certs_path}/425
> b0f6b.key"])
> + else
> + 	AC_MSG_ERROR([Unknown build variant])
> + fi
> +diff --git a/include/swupd.h b/include/swupd.h
> +index 5c722d3..3658dc8 100644
> +--- a/include/swupd.h
> ++++ b/include/swupd.h
> +@@ -132,6 +132,7 @@ extern void *tm_dlhandle;
> + extern char *bundle_to_add;
> + extern struct timeval start_time;
> + extern char *state_dir;
> ++extern char *pinned_pubkey_path;
> + 
> + extern char *version_url;
> + extern char *content_url;
> +diff --git a/src/curl.c b/src/curl.c
> +index 6b6099f..b14193b 100644
> +--- a/src/curl.c
> ++++ b/src/curl.c
> +@@ -447,7 +447,7 @@ static CURLcode
> swupd_curl_set_security_opts(CURL *curl)
> + 		goto exit;
> + 	}
> + 
> +-	curl_ret = curl_easy_setopt(curl, CURLOPT_PINNEDPUBLICKEY,
> "/usr/share/clear/update-ca/425b0f6b.key");
> ++	curl_ret = curl_easy_setopt(curl, CURLOPT_PINNEDPUBLICKEY,
> pinned_pubkey_path);
> + 	if (curl_ret != CURLE_OK) {
> + 		goto exit;
> + 	}
> +diff --git a/src/globals.c b/src/globals.c
> +index f2f1200..d0858df 100644
> +--- a/src/globals.c
> ++++ b/src/globals.c
> +@@ -51,6 +51,7 @@ char *mounted_dirs = NULL;
> + char *bundle_to_add = NULL;
> + struct timeval start_time;
> + char *state_dir = NULL;
> ++char *pinned_pubkey_path = NULL;
> + 
> + /* NOTE: Today the content and version server urls are the same in
> +  * all cases.  It is highly likely these will eventually differ,
> eg:
> +@@ -68,6 +69,7 @@ long update_server_port = -1;
> + static const char *default_version_url_path =
> "/usr/share/defaults/swupd/versionurl";
> + static const char *default_content_url_path =
> "/usr/share/defaults/swupd/contenturl";
> + static const char *default_format_path =
> "/usr/share/defaults/swupd/format";
> ++static const char *default_pinnedpubkey_path =
> "/usr/share/defaults/swupd/pinnedpubkey";
> + 
> + static int set_default_value(char **global, const char *path)
> + {
> +@@ -194,6 +196,16 @@ bool set_state_dir(char *path)
> + 	return true;
> + }
> + 
> ++void set_pinned_pubkey_path()
> ++{
> ++	int ret;
> ++
> ++	ret = set_default_value(&pinned_pubkey_path,
> default_pinnedpubkey_path);
> ++	if (ret < 0) {
> ++		string_or_die(&pinned_pubkey_path, "%s",
> PINNED_PUBKEY_PATH);
> ++	}
> ++}
> ++
> + bool set_format_string(char *userinput)
> + {
> + 	int ret;
> +@@ -322,6 +334,7 @@ bool init_globals(void)
> + 	(void)set_format_string(NULL);
> + 	set_version_url(NULL);
> + 	set_content_url(NULL);
> ++	set_pinned_pubkey_path();
> + 
> + 	/* must set this global after version_url and content_url
> */
> + 	set_local_download();
> +@@ -337,6 +350,7 @@ void free_globals(void)
> + 	free(format_string);
> + 	free(mounted_dirs);
> + 	free(state_dir);
> ++	free(pinned_pubkey_path);
> + 	if (bundle_to_add != NULL) {
> + 		free(bundle_to_add);
> + 	}
> diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-
> core/swupd-client/swupd-client_git.bb
> index 1815db0..0d16171 100644
> --- a/recipes-core/swupd-client/swupd-client_git.bb
> +++ b/recipes-core/swupd-client/swupd-client_git.bb
> @@ -10,6 +10,7 @@ SRC_URI = "\
>      git://github.com/clearlinux/swupd-client.git;protocol=https \
>      file://Change-systemctl-path-to-OE-systemctl-path.patch \
>      file://0001-Add-configure-option-to-re-enable-updating-of-
> config.patch \
> +    file://Make-pinned-pubkey-configurable.patch \
>  "
>  SRCREV = "f4000c5b22be47ec1af2f8748fd71a36148b5dc4"
>  
> @@ -35,6 +36,7 @@ PACKAGECONFIG[stateless] = ",--disable-stateless"
>  SWUPD_VERSION_URL ??= "example.com"
>  SWUPD_CONTENT_URL ??= "example.com"
>  SWUPD_FORMAT ??= "3"
> +SWUPD_PINNED_PUBKEY ??= ""
>  do_install_append () {
>      # TODO: This should be a less os-specific directory and not
> hard-code datadir
>      install -d ${D}$/usr/share/clear/bundles
> @@ -44,6 +46,7 @@ do_install_append () {
>      echo "${SWUPD_VERSION_URL}" >>
> ${D}/usr/share/defaults/swupd/versionurl
>      echo "${SWUPD_CONTENT_URL}" >>
> ${D}/usr/share/defaults/swupd/contenturl
>      echo "${SWUPD_FORMAT}" >> ${D}/usr/share/defaults/swupd/format
> +    test -n "${SWUPD_PINNED_PUBKEY}" && echo
> "${SWUPD_PINNED_PUBKEY}" > ${D}/usr/share/defaults/swupd/pinnedpubkey
>  }
>  
>  FILES_${PN} += "\
> -- 
> 2.5.5
> 

--=-2f7gAnvaFNDyrXHfxUvd
Content-Disposition: attachment; filename="log.do_install.16631"
Content-Type: text/plain; name="log.do_install.16631"; charset="UTF-8"
Content-Transfer-Encoding: base64

REVCVUc6IFNJVEUgZmlsZXMgWydlbmRpYW4tbGl0dGxlJywgJ2JpdC0zMicsICdpeDg2LWNvbW1v
bicsICdjb21tb24tbGludXgnLCAnY29tbW9uLWdsaWJjJywgJ2k1ODYtbGludXgnLCAnY29tbW9u
J10KREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19pbnN0YWxsCk5PVEU6IG1ha2Ug
LWogNzIgREVTVERJUj0vc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1s
aW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2ltYWdlIGlu
c3RhbGwKbWFrZVsxXTogRW50ZXJpbmcgZGlyZWN0b3J5ICcvc3J2L2J1aWxkcy9vZWNvcmUvdG1w
LWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytm
NDAwMGM1YjIyLXIwL2dpdCcKbWtkaXIgLXAgL3Nydi9idWlsZHMvb2Vjb3JlL3RtcC1nbGliYy93
b3JrL2k1ODYtb2UtbGludXgvc3d1cGQtY2xpZW50LzMuNi4wK2dpdEFVVE9JTkMrZjQwMDBjNWIy
Mi1yMC9pbWFnZS9saWIvc3lzdGVtZC9zeXN0ZW0vbXVsdGktdXNlci50YXJnZXQud2FudHMvCiAv
dXNyL2Jpbi9ta2RpciAtcCAnL3Nydi9idWlsZHMvb2Vjb3JlL3RtcC1nbGliYy93b3JrL2k1ODYt
b2UtbGludXgvc3d1cGQtY2xpZW50LzMuNi4wK2dpdEFVVE9JTkMrZjQwMDBjNWIyMi1yMC9pbWFn
ZS91c3IvbGliJwpsbiAtc2YgLi4vY2hlY2stdXBkYXRlLnRpbWVyIC9zcnYvYnVpbGRzL29lY29y
ZS90bXAtZ2xpYmMvd29yay9pNTg2LW9lLWxpbnV4L3N3dXBkLWNsaWVudC8zLjYuMCtnaXRBVVRP
SU5DK2Y0MDAwYzViMjItcjAvaW1hZ2UvbGliL3N5c3RlbWQvc3lzdGVtL211bHRpLXVzZXIudGFy
Z2V0LndhbnRzL2NoZWNrLXVwZGF0ZS50aW1lcgogL3Vzci9iaW4vbWtkaXIgLXAgJy9zcnYvYnVp
bGRzL29lY29yZS90bXAtZ2xpYmMvd29yay9pNTg2LW9lLWxpbnV4L3N3dXBkLWNsaWVudC8zLjYu
MCtnaXRBVVRPSU5DK2Y0MDAwYzViMjItcjAvaW1hZ2UvdXNyL3NoYXJlL2NsZWFyL3VwZGF0ZS1j
YScKIC91c3IvYmluL21rZGlyIC1wICcvc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsv
aTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIw
L2ltYWdlL2xpYi9zeXN0ZW1kL3N5c3RlbScKIC4vaTU4Ni1vZS1saW51eC1saWJ0b29sICAgLS1t
b2RlPWluc3RhbGwgL3Vzci9iaW4vaW5zdGFsbCAtYyAgIGxpYnN3dXBkLmxhICcvc3J2L2J1aWxk
cy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjAr
Z2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2ltYWdlL3Vzci9saWInCiAvdXNyL2Jpbi9pbnN0YWxs
IC1jIC1tIDY0NCBjZXJ0cy8xNTc3NTNhNS4wIGNlcnRzLzQyNWIwZjZiLjAgY2VydHMvNDI1YjBm
NmIua2V5IGNlcnRzLzhkMjhhZTY1LjAgY2VydHMvZDYzMjU2NjAuMCBjZXJ0cy9kNjMyNTY2MC4x
ICcvc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1j
bGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2ltYWdlL3Vzci9zaGFyZS9jbGVh
ci91cGRhdGUtY2EnCiAvdXNyL2Jpbi9pbnN0YWxsIC1jIC1tIDY0NCBkYXRhL2NoZWNrLXVwZGF0
ZS5zZXJ2aWNlIGRhdGEvY2hlY2stdXBkYXRlLnRpbWVyICcvc3J2L2J1aWxkcy9vZWNvcmUvdG1w
LWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytm
NDAwMGM1YjIyLXIwL2ltYWdlL2xpYi9zeXN0ZW1kL3N5c3RlbScKaTU4Ni1vZS1saW51eC1saWJ0
b29sOiBpbnN0YWxsOiAvdXNyL2Jpbi9pbnN0YWxsIC1jIC5saWJzL2xpYnN3dXBkLnNvLjIuMC4w
IC9zcnYvYnVpbGRzL29lY29yZS90bXAtZ2xpYmMvd29yay9pNTg2LW9lLWxpbnV4L3N3dXBkLWNs
aWVudC8zLjYuMCtnaXRBVVRPSU5DK2Y0MDAwYzViMjItcjAvaW1hZ2UvdXNyL2xpYi9saWJzd3Vw
ZC5zby4yLjAuMAppNTg2LW9lLWxpbnV4LWxpYnRvb2w6IGluc3RhbGw6IChjZCAvc3J2L2J1aWxk
cy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjAr
Z2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2ltYWdlL3Vzci9saWIgJiYgeyBsbiAtcyAtZiBsaWJz
d3VwZC5zby4yLjAuMCBsaWJzd3VwZC5zby4yIHx8IHsgcm0gLWYgbGlic3d1cGQuc28uMiAmJiBs
biAtcyBsaWJzd3VwZC5zby4yLjAuMCBsaWJzd3VwZC5zby4yOyB9OyB9KQppNTg2LW9lLWxpbnV4
LWxpYnRvb2w6IGluc3RhbGw6IChjZCAvc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsv
aTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIw
L2ltYWdlL3Vzci9saWIgJiYgeyBsbiAtcyAtZiBsaWJzd3VwZC5zby4yLjAuMCBsaWJzd3VwZC5z
byB8fCB7IHJtIC1mIGxpYnN3dXBkLnNvICYmIGxuIC1zIGxpYnN3dXBkLnNvLjIuMC4wIGxpYnN3
dXBkLnNvOyB9OyB9KQppNTg2LW9lLWxpbnV4LWxpYnRvb2w6IGluc3RhbGw6IC91c3IvYmluL2lu
c3RhbGwgLWMgLmxpYnMvbGlic3d1cGQubGFpIC9zcnYvYnVpbGRzL29lY29yZS90bXAtZ2xpYmMv
d29yay9pNTg2LW9lLWxpbnV4L3N3dXBkLWNsaWVudC8zLjYuMCtnaXRBVVRPSU5DK2Y0MDAwYzVi
MjItcjAvaW1hZ2UvdXNyL2xpYi9saWJzd3VwZC5sYQppNTg2LW9lLWxpbnV4LWxpYnRvb2w6IGlu
c3RhbGw6IC91c3IvYmluL2luc3RhbGwgLWMgLmxpYnMvbGlic3d1cGQuYSAvc3J2L2J1aWxkcy9v
ZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0
QVVUT0lOQytmNDAwMGM1YjIyLXIwL2ltYWdlL3Vzci9saWIvbGlic3d1cGQuYQppNTg2LW9lLWxp
bnV4LWxpYnRvb2w6IGluc3RhbGw6IGNobW9kIDY0NCAvc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWds
aWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAw
MGM1YjIyLXIwL2ltYWdlL3Vzci9saWIvbGlic3d1cGQuYQppNTg2LW9lLWxpbnV4LWxpYnRvb2w6
IGluc3RhbGw6IGk1ODYtb2UtbGludXgtcmFubGliIC9zcnYvYnVpbGRzL29lY29yZS90bXAtZ2xp
YmMvd29yay9pNTg2LW9lLWxpbnV4L3N3dXBkLWNsaWVudC8zLjYuMCtnaXRBVVRPSU5DK2Y0MDAw
YzViMjItcjAvaW1hZ2UvdXNyL2xpYi9saWJzd3VwZC5hCmk1ODYtb2UtbGludXgtbGlidG9vbDog
d2FybmluZzogcmVtZW1iZXIgdG8gcnVuICdpNTg2LW9lLWxpbnV4LWxpYnRvb2wgLS1maW5pc2gg
L3Vzci9saWInCiAvdXNyL2Jpbi9ta2RpciAtcCAnL3Nydi9idWlsZHMvb2Vjb3JlL3RtcC1nbGli
Yy93b3JrL2k1ODYtb2UtbGludXgvc3d1cGQtY2xpZW50LzMuNi4wK2dpdEFVVE9JTkMrZjQwMDBj
NWIyMi1yMC9pbWFnZS91c3IvYmluJwogIC4vaTU4Ni1vZS1saW51eC1saWJ0b29sICAgLS1tb2Rl
PWluc3RhbGwgL3Vzci9iaW4vaW5zdGFsbCAtYyBzd3VwZCAnL3Nydi9idWlsZHMvb2Vjb3JlL3Rt
cC1nbGliYy93b3JrL2k1ODYtb2UtbGludXgvc3d1cGQtY2xpZW50LzMuNi4wK2dpdEFVVE9JTkMr
ZjQwMDBjNWIyMi1yMC9pbWFnZS91c3IvYmluJwppNTg2LW9lLWxpbnV4LWxpYnRvb2w6IHdhcm5p
bmc6ICdsaWJzd3VwZC5sYScgaGFzIG5vdCBiZWVuIGluc3RhbGxlZCBpbiAnL3Vzci9saWInCmk1
ODYtb2UtbGludXgtbGlidG9vbDogaW5zdGFsbDogL3Vzci9iaW4vaW5zdGFsbCAtYyAubGlicy9z
d3VwZCAvc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3Vw
ZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2ltYWdlL3Vzci9iaW4vc3d1
cGQKbWFrZSAgaW5zdGFsbC1leGVjLWhvb2sKbWFrZVsyXTogRW50ZXJpbmcgZGlyZWN0b3J5ICcv
c3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9zd3VwZC1jbGll
bnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2dpdCcKcGVybCBzY3JpcHRzL2ZpbmRz
dGF0aWMucGwgKi8qLm8gfCBncmVwIC12IENoZWNraW5nIHx8OgogICdsaXN0X2FwcGVuZF9kYXRh
JyBpcyB1bmlxdWUgdG8gc3JjL2xpc3Qubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlvbikK
ICAnX194ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlxdWUgdG8gc3JjL2xpc3Qubywgc2hvdWxk
IGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAnX194ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlx
dWUgdG8gc3JjL2RlbHRhLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2
LmdldF9wY190aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNyYy91cGRhdGUubywgc2hvdWxkIGJlIHN0
YXRpYz8gIChmdW5jdGlvbikKICAnX194ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlxdWUgdG8g
c3JjL2Nscl9idW5kbGVfcm0ubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAnX194
ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlxdWUgdG8gc3JjL2Nscl9idW5kbGVfYWRkLm8sIHNo
b3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2LmdldF9wY190aHVuay5ieCcgaXMg
dW5pcXVlIHRvIHNyYy92ZXJpZnkubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAn
Y3JlYXRlX3JlcXVpcmVkX2RpcnMnIGlzIHVuaXF1ZSB0byBzcmMvaGVscGVycy5vLCBzaG91bGQg
YmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdmb3Blbl9leGNsdXNpdmUnIGlzIHVuaXF1ZSB0byBz
cmMvaGVscGVycy5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdmcmVlX3BhdGhf
ZGF0YScgaXMgdW5pcXVlIHRvIHNyYy9oZWxwZXJzLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVu
Y3Rpb24pCiAgJ2dldF9tb3VudGVkX2RpcmVjdG9yaWVzJyBpcyB1bmlxdWUgdG8gc3JjL2hlbHBl
cnMubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAnX194ODYuZ2V0X3BjX3RodW5r
LmJ4JyBpcyB1bmlxdWUgdG8gc3JjL2hlbHBlcnMubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5j
dGlvbikKICAnaXNfY29uZmlnJyBpcyB1bmlxdWUgdG8gc3JjL2hldXJpc3RpY3Mubywgc2hvdWxk
IGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAnaXNfc3RhdGUnIGlzIHVuaXF1ZSB0byBzcmMvaGV1
cmlzdGljcy5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNf
dGh1bmsuYXgnIGlzIHVuaXF1ZSB0byBzcmMvaGV1cmlzdGljcy5vLCBzaG91bGQgYmUgc3RhdGlj
PyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNfdGh1bmsuYnAnIGlzIHVuaXF1ZSB0byBzcmMv
aGV1cmlzdGljcy5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRf
cGNfdGh1bmsuYngnIGlzIHVuaXF1ZSB0byBzcmMvaGV1cmlzdGljcy5vLCBzaG91bGQgYmUgc3Rh
dGljPyAgKGZ1bmN0aW9uKQogICdhY2NvdW50X2RlbHRhX2hpdCcgaXMgdW5pcXVlIHRvIHNyYy9z
dGF0cy5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdhY2NvdW50X2RlbHRhX21p
c3MnIGlzIHVuaXF1ZSB0byBzcmMvc3RhdHMubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlv
bikKICAnX194ODYuZ2V0X3BjX3RodW5rLmF4JyBpcyB1bmlxdWUgdG8gc3JjL3N0YXRzLm8sIHNo
b3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2LmdldF9wY190aHVuay5ieCcgaXMg
dW5pcXVlIHRvIHNyYy9zdGF0cy5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdf
X3g4Ni5nZXRfcGNfdGh1bmsuYngnIGlzIHVuaXF1ZSB0byBzcmMvY3VybC5vLCBzaG91bGQgYmUg
c3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNfdGh1bmsuYngnIGlzIHVuaXF1ZSB0
byBzcmMvY2hlY2tfdXBkYXRlLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ2Jp
bl9wYXRocycgaXMgdW5pcXVlIHRvIHNyYy9zZWFyY2gubywgc2hvdWxkIGJlIHN0YXRpYz8gIChp
bml0aWFsaXNlZCB2YXJpYWJsZSkKICAnZG9fc2VhcmNoJyBpcyB1bmlxdWUgdG8gc3JjL3NlYXJj
aC5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdkb3dubG9hZF9tYW5pZmVzdHMn
IGlzIHVuaXF1ZSB0byBzcmMvc2VhcmNoLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24p
CiAgJ2ZpbGVfc2VhcmNoJyBpcyB1bmlxdWUgdG8gc3JjL3NlYXJjaC5vLCBzaG91bGQgYmUgc3Rh
dGljPyAgKGZ1bmN0aW9uKQogICdsaWJfcGF0aHMnIGlzIHVuaXF1ZSB0byBzcmMvc2VhcmNoLm8s
IHNob3VsZCBiZSBzdGF0aWM/ICAoaW5pdGlhbGlzZWQgdmFyaWFibGUpCiAgJ3JlcG9ydF9maW5k
JyBpcyB1bmlxdWUgdG8gc3JjL3NlYXJjaC5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9u
KQogICdzY29wZScgaXMgdW5pcXVlIHRvIHNyYy9zZWFyY2gubywgc2hvdWxkIGJlIHN0YXRpYz8g
IChpbml0aWFsaXNlZCB2YXJpYWJsZSkKICAnc2VhcmNoX3R5cGUnIGlzIHVuaXF1ZSB0byBzcmMv
c2VhcmNoLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoaW5pdGlhbGlzZWQgdmFyaWFibGUpCiAgJ19f
eDg2LmdldF9wY190aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNyYy9zZWFyY2gubywgc2hvdWxkIGJl
IHN0YXRpYz8gIChmdW5jdGlvbikKICAnX194ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlxdWUg
dG8gc3JjL3ZlcnNpb24ubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAnX194ODYu
Z2V0X3BjX3RodW5rLmRpJyBpcyB1bmlxdWUgdG8gc3JjL3ZlcnNpb24ubywgc2hvdWxkIGJlIHN0
YXRpYz8gIChmdW5jdGlvbikKICAnc2V0X3Bpbm5lZF9wdWJrZXlfcGF0aCcgaXMgdW5pcXVlIHRv
IHNyYy9nbG9iYWxzLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2Lmdl
dF9wY190aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNyYy9nbG9iYWxzLm8sIHNob3VsZCBiZSBzdGF0
aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2LmdldF9wY190aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNy
Yy9tYWluLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2LmdldF9wY190
aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNyYy9kb3dubG9hZC5vLCBzaG91bGQgYmUgc3RhdGljPyAg
KGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNfdGh1bmsuYngnIGlzIHVuaXF1ZSB0byBzcmMvc3d1
cGQubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlvbikKICAnX194ODYuZ2V0X3BjX3RodW5r
LmJ4JyBpcyB1bmlxdWUgdG8gc3JjL3NjcmlwdHMubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5j
dGlvbikKICAnX194ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlxdWUgdG8gc3JjL3hhdHRycy5v
LCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNfdGh1bmsuYngn
IGlzIHVuaXF1ZSB0byBzcmMvaGFzaGR1bXAubywgc2hvdWxkIGJlIHN0YXRpYz8gIChmdW5jdGlv
bikKICAnX194ODYuZ2V0X3BjX3RodW5rLmJ4JyBpcyB1bmlxdWUgdG8gc3JjL21hbmlmZXN0Lm8s
IHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2LmdldF9wY190aHVuay5ieCcg
aXMgdW5pcXVlIHRvIHNyYy9sb2NrLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAg
J19feDg2LmdldF9wY190aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNyYy9zdGFnaW5nLm8sIHNob3Vs
ZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAgJ19feDg2LmdldF9wY190aHVuay5ieCcgaXMgdW5p
cXVlIHRvIHNyYy9wYWNrcy5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4
Ni5nZXRfcGNfdGh1bmsuYngnIGlzIHVuaXF1ZSB0byBzcmMvc3Vic2NyaXB0aW9ucy5vLCBzaG91
bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNfdGh1bmsuYngnIGlzIHVu
aXF1ZSB0byBzcmMvaGFzaC5vLCBzaG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdpbnN0
YWxsX2J1bmRsZXMnIGlzIHVuaXF1ZSB0byBzcmMvYnVuZGxlLm8sIHNob3VsZCBiZSBzdGF0aWM/
ICAoZnVuY3Rpb24pCiAgJ2lzX2luY2x1ZGVkJyBpcyB1bmlxdWUgdG8gc3JjL2J1bmRsZS5vLCBz
aG91bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQogICdfX3g4Ni5nZXRfcGNfdGh1bmsuYngnIGlz
IHVuaXF1ZSB0byBzcmMvYnVuZGxlLm8sIHNob3VsZCBiZSBzdGF0aWM/ICAoZnVuY3Rpb24pCiAg
J19feDg2LmdldF9wY190aHVuay5ieCcgaXMgdW5pcXVlIHRvIHNyYy9maWxlZGVzYy5vLCBzaG91
bGQgYmUgc3RhdGljPyAgKGZ1bmN0aW9uKQptYWtlWzJdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL3Ny
di9idWlsZHMvb2Vjb3JlL3RtcC1nbGliYy93b3JrL2k1ODYtb2UtbGludXgvc3d1cGQtY2xpZW50
LzMuNi4wK2dpdEFVVE9JTkMrZjQwMDBjNWIyMi1yMC9naXQnCm1ha2VbMV06IExlYXZpbmcgZGly
ZWN0b3J5ICcvc3J2L2J1aWxkcy9vZWNvcmUvdG1wLWdsaWJjL3dvcmsvaTU4Ni1vZS1saW51eC9z
d3VwZC1jbGllbnQvMy42LjArZ2l0QVVUT0lOQytmNDAwMGM1YjIyLXIwL2dpdCcKV0FSTklORzog
L3Nydi9idWlsZHMvb2Vjb3JlL3RtcC1nbGliYy93b3JrL2k1ODYtb2UtbGludXgvc3d1cGQtY2xp
ZW50LzMuNi4wK2dpdEFVVE9JTkMrZjQwMDBjNWIyMi1yMC90ZW1wL3J1bi5kb19pbnN0YWxsLjE2
NjMxOjEgZXhpdCAxIGZyb20gJ3Rlc3QgLW4gIiInCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRv
X2luc3RhbGwgKGxvZyBmaWxlIGlzIGxvY2F0ZWQgYXQgL3Nydi9idWlsZHMvb2Vjb3JlL3RtcC1n
bGliYy93b3JrL2k1ODYtb2UtbGludXgvc3d1cGQtY2xpZW50LzMuNi4wK2dpdEFVVE9JTkMrZjQw
MDBjNWIyMi1yMC90ZW1wL2xvZy5kb19pbnN0YWxsLjE2NjMxKQo=

--=-2f7gAnvaFNDyrXHfxUvd--
