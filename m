Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 422F0E7719A
	for <webhook@archiver.kernel.org>; Thu,  9 Jan 2025 14:17:29 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.49272.1736432246944827321
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2025 06:17:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ISH7zLtn;
 spf=pass (domain: linaro.org, ip: 209.85.167.43, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-540215984f0so1041009e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2025 06:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736432245; x=1737037045; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AYkwMVOsZJ9AkV8CUWwDLNWzBKyoukCwE5n7qq0FI6o=;
        b=ISH7zLtnSc1jE+zaM0Z0J8z2sYQLQW92jY5cXkid1FdH9oMRj5xd2crg7TORnnRjkt
         yGNri9T0AzN1BiHclUhV5l3nrdI5tOhi4F41uZUdLX9v1mjvySXum7+D582gflyvtQY4
         avDl2NyRP4/b5CWbsQAFroSPjXoPAVskE1PqRPm8iLsUOIYKv95n1tGV4fy/sCHWDRMa
         R6wzF1UrJp7p4JxHc/hkfuf2ZDZrew8w8LSDyvIwZqz5RWa7EDaLmpuXzPXiQswi+O2Z
         ED1tpjmHwEsGIyi2Cot77EpVgzGyuHYkfa/px+szfSMpI2PxtIJpdTDAAuD5wkZvwR+i
         c8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736432245; x=1737037045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYkwMVOsZJ9AkV8CUWwDLNWzBKyoukCwE5n7qq0FI6o=;
        b=EE0O9vUH0tmiD5ONsDc6kEACOSG+1Z/NO3xM2vDOBi5nF2FvwsaJ2/COcK6bgifD5s
         CZfAEtpN1dQfENXFjZ26YxOHdiMLB8e/FDONs2GjZYpc5DW/tUsKEo1hB5RElVyr+MG9
         aimGs88E6v4kP+iLb39s/hNdj0zyz6mIwxQhnmOHVfYhi3VSN7s+WBOMrigteCeKCF9y
         sJq9I6yDupZfOyyQCcxJNAaIomLnWlVk/tnJEb2uUfkadHqGdJBWyDhhFsOAhwRp6dIz
         bxbUiJ4m6x0mnfWcO9BIYbRLnYJcC7Gpb9oXEGWdIEWDIdXHsVOHszfx+E4W2NDfDYU5
         2uLw==
X-Forwarded-Encrypted: i=1; AJvYcCW1oL+48JWpTGCCRFgdA0lvH9nut+Mt5YfX+GHsw6V8FHunr1Qlzlkkmn0ABKrNkO6FenFzjQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzrFCwXeuqUBxPxbSfmfBYHlMQbyVY0caHfsExgwhARNUXuj/wC
	6C7mIoG3qa3rFfT/kQdi1bhI+D3kF+TviZoLtlXdozl09JYg8L+4sqGh9CUigYo=
X-Gm-Gg: ASbGnctVhzSw6e4DRZOlOTjtkg9gzMlMMOgmS07KdSsGD3Dh8SiFh9L5eedLfaIRj38
	Cy1qeEFgs3554Cgc66MgHLpEL2jhmEgeNGK9jLl0cJggVTnAGlHev8IZxZoqyAwaBKwXpBFMvk8
	wbpsjgc46KuNMhvZbVNYnvdpqtYnekKTbxLq/gCRdHBpGU0NS8TKCeznaI83PKSIDWhJ3hpktHy
	sBu+bFwkMiFcwtPFrGFTy6YnCUaOhVdhsQDumDfI8apR6Zz5mr0j+AFuhZcESHJnsdSIk2J2yNx
	IWK8CFoPFw==
X-Google-Smtp-Source: AGHT+IFfTcofCdX1yTU3mHNv7tIikqVPVO0YoNxY0+LL9GnoM8bs5mDliADVNnK0Ea0PB3Mx4iA/Jg==
X-Received: by 2002:a05:6512:3da9:b0:53f:f074:801c with SMTP id 2adb3069b0e04-54284815c7dmr2293616e87.41.1736432244704;
        Thu, 09 Jan 2025 06:17:24 -0800 (PST)
Received: from nuoska (2001-14ba-44f-6700--133.rev.dnainternet.fi. [2001:14ba:44f:6700::133])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea66b4sm214364e87.142.2025.01.09.06.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 06:17:23 -0800 (PST)
Date: Thu, 9 Jan 2025 16:17:21 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: jing.hui.tham@intel.com
Cc: "qa-build-notification@lists.yoctoproject.org" <qa-build-notification@lists.yoctoproject.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	"openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>,
	Ross Burton <Ross.Burton@arm.com>,
	Ilias Apalodimas <ilias.apalodimas@linaro.org>,
	Bill Mills <bill.mills@linaro.org>
Subject: Re: [OE-core] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.2_M1.rc2)
Message-ID: <Z3_acS6aXwp6chf5@nuoska>
References: <2157aff053df3e53717993042e587b20e256f87b.camel@linuxfoundation.org>
 <DM4PR11MB776009E6944CBE53C0A21CC9A1092@DM4PR11MB7760.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB776009E6944CBE53C0A21CC9A1092@DM4PR11MB7760.namprd11.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2025 14:17:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64523

Hi

On Mon, Dec 30, 2024 at 08:33:17AM +0000, Jing Hui Tham via lists.openembedded.org wrote:
> QA for yocto-5.2_M1.rc2 is completed. This is the full report for yocto-5.2_M1.rc2:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults

How are these results generated for each HW?

Do you run a build for the machine with some special config on a build machine which has
the test target connected?

Specificially, I'm wondering how to run the manual tests and oeqa runtime tests
at the same time to produce a single testresults.json file which has both.

The result json files show which images get tested.

How did you select these for each HW?

Default oeqa runtime tests from TEST_SUITES variable for images without SSH server don't
really work so core-image-base and core-image-minimal testing doesn't find anything.
Only core-image-sato, core-image-weston etc have SSH server and real tests find something.
I wonder if some other tests should be done for these images without SSH over serial console.

> ======= Summary ========
> For Beaglebone, there is a new bug found: Bug 15703 - [5.2 M1 RC2] Fail to start matchbox-desktop on beaglebone: 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=15703
> Since there is no graphic desktop, all graphics-related test cases are skipped.
> 
> For the new BSP BeaglePlay, the test for genericarm64 image could not be completed due to bug 15704. So there are only test results for genericarm64-alt image this time.
> Bug 15704 - [5.2 M1 RC2] BeaglePlay: System hangs randomly and kernel call trace with 6.12: 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=15704

I've done some testing of genericarm64 machine builds on AMD KV260 which I could also contribute
to yocto-testresults-contrib repo, as well as some fixes/changes to oe-core/poky and/or
bug reports/feature requests:

 * testing done in Linaro Lava lab with AMD KV260 devices running Linaro Truste Substrate u-boot
   based firmware with secure boot disabled ( https://gitlab.com/Linaro/trustedsubstrate/meta-ts ).
   HW has been slightly modified to enable flashing firmware and SW automatically.

 * default poky distro build images don't work for testing because serial console getty
   setup is broken. Thus serial login prompt fails which our Lava testing uses to detect
   a fully booted system. Fix is to add KV260 serial console to genericarm64 or to fix
   serial console detection with udev also on sysvinit. systemd images with udev work
   correctly. Example:

https://ledge.validation.linaro.org/scheduler/job/99486

INIT: Id "S0" respawning too fast: disabled for 5 minutes
INIT: Id "S1" respawning too fast: disabled for 5 minutes
INIT: Id "S2" respawning too fast: disabled for 5 minutes
INIT: Id "S0" respawning too fast: disabled for 5 minutes
INIT: Id "S1" respawning too fast: disabled for 5 minutes
INIT: Id "S2" respawning too fast: disabled for 5 minutes

 * testexport.bbclass not enabled so testing outside of build environment is hard.
   Using exported tests works well in Linaro Lava so I've enable them in the test build
   and modified the output files to contain full image name to easily match
   image with image specific test export file. Draft patch:

--- a/meta/classes-recipe/testexport.bbclass
+++ b/meta/classes-recipe/testexport.bbclass
@@ -139,7 +139,7 @@ def copy_needed_files(d, tc):
                 shutil.rmtree(os.path.join(subdir, dir))
 
     # Create tar file for common parts of testexport
-    testexport_create_tarball(d, "testexport.tar.gz", d.getVar("TEST_EXPORT_DIR"))
+    testexport_create_tarball(d, "testexport_" + d.getVar('IMAGE_LINK_NAME') + ".tar.gz", d.getVar("TEST_EXPORT_DIR"))
 
     # Copy packages needed for runtime testing
     package_extraction(d, tc.suites)

   Enabled in local.conf with:

IMAGE_CLASSES += "testexport testimage"

 * Since serial console works correctly with systemd init, testing poky-altcfg distro
   instead of poky, but that downgrades kernel from 6.12 to 6.6 which is not that interesting
   for us. Thus updated kernel to 6.12 with draft poky change:

--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -2,7 +2,7 @@
 DISTRO_FEATURES:append = " pam usrmerge"
 
 # Use our alternate kernel version
-PREFERRED_VERSION_linux-yocto = "6.6%"
+#PREFERRED_VERSION_linux-yocto = "6.6%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"

 * core-image-base boots to serial console login and reboot succeeds. Further testing
   with oeqa runtime does not work since SSH server not installed.

   https://ledge.validation.linaro.org/scheduler/job/99485

 * core-image-minimal boots to serial console login and reboot succeeds. Further testing
   with oeqa runtime does not work since no SSH server installed.

   https://ledge.validation.linaro.org/scheduler/job/99484

 * core-image-sato boots to serial console login and reboot succeeds. Since SSH server is
   on image oeqa runtime tests run and results are:

   https://ledge.validation.linaro.org/scheduler/job/99483

2025-01-09 08:08:13,221 - runtime - INFO - Ran 73 tests in 186.726s
2025-01-09 08:08:13,222 - runtime - INFO - FAILED
2025-01-09 08:08:13,222 - runtime - INFO -  (failures=4, skipped=49)
2025-01-09 08:08:13,239 - runtime - INFO - RESULTS:
2025-01-09 08:08:13,239 - runtime - INFO - RESULTS - connman.ConnmanTest.test_connmand_help: PASSED (0.75s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - connman.ConnmanTest.test_connmand_running: PASSED (0.70s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - date.DateTest.test_date: PASSED (9.10s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - df.DfTest.test_df: PASSED (0.74s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - oe_syslog.SyslogTest.test_syslog_running: PASSED (0.72s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - oe_syslog.SyslogTestConfig.test_syslog_logger: PASSED (2.28s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - oe_syslog.SyslogTestConfig.test_syslog_restart: PASSED (1.31s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - pam.PamBasicTest.test_pam: PASSED (2.88s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - parselogs.ParseLogsTest.test_get_context: PASSED (0.00s)
2025-01-09 08:08:13,240 - runtime - INFO - RESULTS - ping.PingTest.test_ping: PASSED (0.01s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - python.PythonTest.test_python3: PASSED (1.25s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - scp.ScpTest.test_scp_file: PASSED (2.81s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - ssh.SSHTest.test_ssh: PASSED (0.72s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdBasicTests.test_systemd_basic: PASSED (0.71s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdBasicTests.test_systemd_list: PASSED (3.07s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdJournalTests.test_systemd_boot_time: PASSED (0.89s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdJournalTests.test_systemd_journal: PASSED (1.12s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_disable_enable: PASSED (7.29s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_status: PASSED (0.76s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_stop_start: PASSED (2.78s)
2025-01-09 08:08:13,241 - runtime - INFO - RESULTS - apt.AptRepoTest.test_apt_install_from_repo: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - buildcpio.BuildCpioTest.test_cpio: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - buildgalculator.GalculatorTest.test_galculator: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - buildlzip.BuildLzipTest.test_lzip: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_help: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_history: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_info: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_search: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_version: SKIPPED (0.00s)
2025-01-09 08:08:13,242 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_exclude: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install_dependency: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install_from_disk: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install_from_http: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_installroot: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_installroot_usrmerge: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_makecache: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_reinstall: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_repoinfo: SKIPPED (0.00s)
2025-01-09 08:08:13,243 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_gcc_compile: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_gpp2_compile: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_gpp_compile: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_make: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - gi.GObjectIntrospectionTest.test_python: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - go.GoHelloworldTest.test_gohelloworld: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - kernelmodule.KernelModuleTest.test_kernel_module: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - ldd.LddTest.test_ldd: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - logrotate.LogrotateTest.test_logrotate_newlog: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - logrotate.LogrotateTest.test_logrotate_wtmp: SKIPPED (0.00s)
2025-01-09 08:08:13,244 - runtime - INFO - RESULTS - oe_syslog.SyslogTestConfig.test_syslog_startup_config: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - perl.PerlTest.test_perl_works: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - ptest.PtestRunnerTest.test_ptestrunner_expectfail: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - ptest.PtestRunnerTest.test_ptestrunner_expectsuccess: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rpm.RpmBasicTest.test_rpm_help: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rpm.RpmBasicTest.test_rpm_query: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rpm.RpmBasicTest.test_rpm_query_nonroot: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rpm.RpmInstallRemoveTest.test_check_rpm_install_removal_log_file_size: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rpm.RpmInstallRemoveTest.test_rpm_install: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rpm.RpmInstallRemoveTest.test_rpm_remove: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rust.RustCLibExampleTest.test_rust_c_lib_example: SKIPPED (0.00s)
2025-01-09 08:08:13,245 - runtime - INFO - RESULTS - rust.RustCompileTest.test_cargo_compile: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - rust.RustCompileTest.test_rust_compile: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - stap.StapTest.test_stap: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_coredump_minidebuginfo: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_disable_enable_ro: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - weston.WestonTest.test_wayland_info: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - weston.WestonTest.test_weston_can_initialize_new_wayland_compositor: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - weston.WestonTest.test_weston_running: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - weston.WestonTest.test_weston_supports_xwayland: SKIPPED (0.00s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - opkg.OpkgRepoTest.test_opkg_install_from_repo: FAILED (135.86s)
2025-01-09 08:08:13,246 - runtime - INFO - RESULTS - parselogs.ParseLogsTest.test_parselogs: FAILED (4.76s)
2025-01-09 08:08:13,247 - runtime - INFO - RESULTS - systemd.SystemdBasicTests.test_systemd_failed: FAILED (2.19s)
2025-01-09 08:08:13,247 - runtime - INFO - RESULTS - xorg.XorgTest.test_xorg_running: FAILED (1.27s)
2025-01-09 08:08:13,250 - runtime - INFO - SUMMARY:
2025-01-09 08:08:13,250 - runtime - INFO - runtime () - Ran 73 tests in 186.734s
2025-01-09 08:08:13,250 - runtime - INFO - runtime - FAIL - Required tests failed (successes=20, skipped=49, failures=4, errors=0)

   opkg.OpkgRepoTest.test_opkg_install_from_repo failure is a test setup issue since
   package repo from build environment is not exported to test environment.

   parselogs.ParseLogsTest.test_parselogs fails since firmware and kernel trigger some new
   non-fatal warnings to dmesg. Needs detailed investigation to either supress warnings or
   to fix root causes.

   systemd.SystemdBasicTests.test_systemd_failed fails since xserver-nodm.service fails
   start. X11 graphics support on AMD KV260 is not enabled or working yet on genericarm64
   machine.

   xorg.XorgTest.test_xorg_running fails since xorg startup fails.

 * core-image-weston boots to serial console login and reboot succeeds. SSH server is installed
   so oeqa runtime tests run and results are:

   https://ledge.validation.linaro.org/scheduler/job/99486

2025-01-09 08:55:34,919 - runtime - INFO - ----------------------------------------------------------------------
2025-01-09 08:55:34,919 - runtime - INFO - Ran 73 tests in 192.950s
2025-01-09 08:55:34,920 - runtime - INFO - FAILED
2025-01-09 08:55:34,920 - runtime - INFO -  (failures=6, skipped=49)
2025-01-09 08:55:34,937 - runtime - INFO - RESULTS:
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - date.DateTest.test_date: PASSED (9.06s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - df.DfTest.test_df: PASSED (0.73s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - oe_syslog.SyslogTest.test_syslog_running: PASSED (0.71s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - oe_syslog.SyslogTestConfig.test_syslog_logger: PASSED (2.29s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - oe_syslog.SyslogTestConfig.test_syslog_restart: PASSED (1.29s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - pam.PamBasicTest.test_pam: PASSED (2.89s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - parselogs.ParseLogsTest.test_get_context: PASSED (0.00s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - ping.PingTest.test_ping: PASSED (0.01s)
2025-01-09 08:55:34,938 - runtime - INFO - RESULTS - scp.ScpTest.test_scp_file: PASSED (2.78s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - ssh.SSHTest.test_ssh: PASSED (0.74s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdBasicTests.test_systemd_basic: PASSED (0.69s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdBasicTests.test_systemd_list: PASSED (3.10s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdJournalTests.test_systemd_boot_time: PASSED (0.91s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdJournalTests.test_systemd_journal: PASSED (1.11s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_disable_enable: PASSED (7.28s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_status: PASSED (0.76s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_stop_start: PASSED (2.75s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - weston.WestonTest.test_wayland_info: PASSED (7.56s)
2025-01-09 08:55:34,939 - runtime - INFO - RESULTS - apt.AptRepoTest.test_apt_install_from_repo: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - buildcpio.BuildCpioTest.test_cpio: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - buildgalculator.GalculatorTest.test_galculator: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - buildlzip.BuildLzipTest.test_lzip: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - connman.ConnmanTest.test_connmand_help: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - connman.ConnmanTest.test_connmand_running: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_help: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_history: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_info: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_search: SKIPPED (0.00s)
2025-01-09 08:55:34,940 - runtime - INFO - RESULTS - dnf.DnfBasicTest.test_dnf_version: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_exclude: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install_dependency: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install_from_disk: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_install_from_http: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_installroot: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_installroot_usrmerge: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_makecache: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_reinstall: SKIPPED (0.00s)
2025-01-09 08:55:34,941 - runtime - INFO - RESULTS - dnf.DnfRepoTest.test_dnf_repoinfo: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_gcc_compile: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_gpp2_compile: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_gpp_compile: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - gcc.GccCompileTest.test_make: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - gi.GObjectIntrospectionTest.test_python: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - go.GoHelloworldTest.test_gohelloworld: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - kernelmodule.KernelModuleTest.test_kernel_module: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - ldd.LddTest.test_ldd: SKIPPED (0.00s)
2025-01-09 08:55:34,942 - runtime - INFO - RESULTS - logrotate.LogrotateTest.test_logrotate_newlog: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - logrotate.LogrotateTest.test_logrotate_wtmp: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - oe_syslog.SyslogTestConfig.test_syslog_startup_config: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - perl.PerlTest.test_perl_works: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - ptest.PtestRunnerTest.test_ptestrunner_expectfail: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - ptest.PtestRunnerTest.test_ptestrunner_expectsuccess: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - python.PythonTest.test_python3: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - rpm.RpmBasicTest.test_rpm_help: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - rpm.RpmBasicTest.test_rpm_query: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - rpm.RpmBasicTest.test_rpm_query_nonroot: SKIPPED (0.00s)
2025-01-09 08:55:34,943 - runtime - INFO - RESULTS - rpm.RpmInstallRemoveTest.test_check_rpm_install_removal_log_file_size: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - rpm.RpmInstallRemoveTest.test_rpm_install: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - rpm.RpmInstallRemoveTest.test_rpm_remove: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - rust.RustCLibExampleTest.test_rust_c_lib_example: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - rust.RustCompileTest.test_cargo_compile: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - rust.RustCompileTest.test_rust_compile: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - stap.StapTest.test_stap: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_coredump_minidebuginfo: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - systemd.SystemdServiceTests.test_systemd_disable_enable_ro: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - xorg.XorgTest.test_xorg_running: SKIPPED (0.00s)
2025-01-09 08:55:34,944 - runtime - INFO - RESULTS - opkg.OpkgRepoTest.test_opkg_install_from_repo: FAILED (136.68s)
2025-01-09 08:55:34,945 - runtime - INFO - RESULTS - parselogs.ParseLogsTest.test_parselogs: FAILED (4.11s)
2025-01-09 08:55:34,945 - runtime - INFO - RESULTS - systemd.SystemdBasicTests.test_systemd_failed: FAILED (2.21s)
2025-01-09 08:55:34,945 - runtime - INFO - RESULTS - weston.WestonTest.test_weston_can_initialize_new_wayland_compositor: FAILED (0.54s)
2025-01-09 08:55:34,945 - runtime - INFO - RESULTS - weston.WestonTest.test_weston_running: FAILED (1.27s)
2025-01-09 08:55:34,945 - runtime - INFO - RESULTS - weston.WestonTest.test_weston_supports_xwayland: FAILED (0.73s)
2025-01-09 08:55:34,948 - runtime - INFO - SUMMARY:
2025-01-09 08:55:34,948 - runtime - INFO - runtime () - Ran 73 tests in 192.962s
2025-01-09 08:55:34,948 - runtime - INFO - runtime - FAIL - Required tests failed (successes=18, skipped=49, failures=6, errors=0)

   opkg.OpkgRepoTest.test_opkg_install_from_repo fails like on core-image-sato with same root cause,
   missing package repo in test environment.

   parselogs.ParseLogsTest.test_parselogs fails like on core-image-sato.

   systemd.SystemdBasicTests.test_systemd_failed fails since weston.service fails
   to start. Details need to be investigated and likely related to graphics stack
   not setup yet on genericarm64 for AMD KV260.

   weston.WestonTest.test_weston_can_initialize_new_wayland_compositor fails since
   weston.service startup fails.

   weston.WestonTest.test_weston_running fails since weston.service startup fails.

   weston.WestonTest.test_weston_supports_xwayland fails since weston.service startup
   fails.

I could upload testresult.json files from these test runs to yocto-testresults-contrib.
Which branch name should I use? Any reviews needed for the changes? I could also
report the test failures to bugzilla, if that makes sense. I will try get these fixed
and also improve the tests, for example the small images without SSH could be checked
a bit more over serial console.

Any feedback to this first test run is welcome.

Cheers,

-Mikko

