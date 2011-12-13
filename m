Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 725C9E00742
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 12:14:36 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2011 12:14:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="46847728"
Received: from unknown (HELO [10.255.12.215]) ([10.255.12.215])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Dec 2011 12:14:35 -0800
Message-ID: <4EE7B22B.80303@linux.intel.com>
Date: Tue, 13 Dec 2011 12:14:35 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<CANJvwR-GVN+=JaS29oxmGM6mr-D6ncv+vsyVT2OaT+vOEaU8qA@mail.gmail.com>
	<4EE1957E.1060506@linux.intel.com>
	<CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
	<4EE263A1.4080604@linux.intel.com>
	<CANJvwR-T-6a4ofVw7GYF8x9DeJuW0VDyO+rQNCUgrRKio2xKHg@mail.gmail.com>
In-Reply-To: <CANJvwR-T-6a4ofVw7GYF8x9DeJuW0VDyO+rQNCUgrRKio2xKHg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: HOB usage
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
X-List-Received-Date: Tue, 13 Dec 2011 20:14:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/12/11 21:20, Sathishkumar Duraisamy wrote:
> Hi,
> 
> Today, I tried to reproduce the problem and magically, today, hob
> works as expected.  So, I started once again with new config, and
> again I tried to reproduce the problem. But the problem exists.
> 
> The reason for this, once we select our images in the
> edit->preference, it writes our preference in the file hob-post.conf
> file. But it doesn't parses it again unless we are restarting the hob
> again.

Hmm, your analysis seems sound enough. We do call the setVariable
command on the cooker which I had expected to ensure the variable was
set appropriately without a reparse.

We can easily add a patch to trigger a reparse once IMAGE_FSTYPES is
changed, as we do with several of the other preference values.

Something like:

joshual@shamshir:~/Projects/Yocto/poky-stable [josh/edison *]
$ git diff
diff --git a/bitbake/lib/bb/ui/crumbs/hobprefs.py
b/bitbake/lib/bb/ui/crumbs/hob
index 5dfb0e6..3f6f128 100644
--- a/bitbake/lib/bb/ui/crumbs/hobprefs.py
+++ b/bitbake/lib/bb/ui/crumbs/hobprefs.py
@@ -39,6 +39,7 @@ class HobPrefs(gtk.Dialog):
             self.selected_image_types =
handler.remove_image_output_type(ot)

         self.configurator.setConfVar('IMAGE_FSTYPES', "%s" % "
".join(self.sele
+        self.reload_required = True

     def sdk_machine_combo_changed_cb(self, combo, handler):
         sdk_mach = combo.get_active_text()

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

