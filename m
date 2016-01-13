Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954C9E00B6D; Wed, 13 Jan 2016 14:38:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B60E00B66
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 14:38:06 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id cy9so365411728pac.0
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 14:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=L8wawbAz9/hsK8yW8GBfvw43QODzIdgKfee5Kp01h3k=;
	b=lYcEakDfE1/xwzLnT6iA+OqZg33qj7lfo5D2io5QuuSo/x1Qy+SVHYBQCW1/GLzm9G
	lPs46L2KdVoUs2iFeyC511SQswJqRy/32oT/+ZLTikJ+3H+5swBl+nVVEvWbOQ/QfA6w
	E8+PR1kiaI3zPuq3gLOmPbcY99wMALzrG1yOACLQKFsJNMe/7U+CxqkDR+YG0hN86H+z
	PvpEao5rgLPda6aCNmm7H6j6TYNWq+rKUewhA9BHvW/PlfZDrsykPvi4xtWg5QTQAUdf
	Udv3ZWWU7O0kcdjJIPeIQpY8w+p22Co788eu+o6ry3YMI07d2NcnvN1SFLgxNR0cPmpK
	mhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=L8wawbAz9/hsK8yW8GBfvw43QODzIdgKfee5Kp01h3k=;
	b=NNlq5xS9hLXMe5vT9oIn0UcLn0UjDeiv33BTYupsNFXYTM1FbXZFvyDNha+9eKPy3+
	U1kgJ4kNvUDvS9wz+SD5Ax8tdW6+NocERURKxXeztDavZ1heJRmxY3sUCSZ5aZlt+L34
	ujyLcN6GOvFMX6hAIQnJVbhw5PD8gHPg0vKizLh8ZXlmPXMC2ghB0ApBs/U9cmj8PnwT
	Xy0LF0kSDMjljZh3b8vwX+QChXh41gX9YbYtfMm+5QluXENFdagzg4Tj/uSE5fMhIU0N
	pFJUmundYj0U19pdlK8hkKrjU1tb/s6OSggh2pFcV7rvT3Pwy2tVY/Fh/8M4Ksn0PiRC
	1cZg==
X-Gm-Message-State: ALoCoQkt2VKtAW2w92xZoMuhBSRdrRzKpdK/XG7cqk9RFnEwOLAKjl0Sqv1uH3dwF0uLDaKOQ4CHWSBAT4iNJV3sJHdpTPjVLw==
X-Received: by 10.66.156.106 with SMTP id wd10mr960561pab.150.1452724686584;
	Wed, 13 Jan 2016 14:38:06 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	x10sm4786931pas.37.2016.01.13.14.38.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 Jan 2016 14:38:05 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jan 2016 14:37:58 -0800
Message-Id: <1452724678-29378-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH] rpi-gpio: Upgrade to 0.6.1 and fix build with clang
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
X-List-Received-Date: Wed, 13 Jan 2016 22:38:11 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../rpi-gpio/0001-Remove-nested-functions.patch    | 294 +++++++++++++++++++++
 .../{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb}      |   6 +-
 2 files changed, 298 insertions(+), 2 deletions(-)
 create mode 100644 recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
 rename recipes-devtools/python/{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb} (70%)

diff --git a/recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch b/recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
new file mode 100644
index 0000000..bd97179
--- /dev/null
+++ b/recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
@@ -0,0 +1,294 @@
+From 23d7ab77865f8b17042f5cd4c6720cca475e0eb5 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 13 Jan 2016 14:27:10 -0800
+Subject: [PATCH] Remove nested functions
+
+nested functions are not supported on llvm/clang compiler, replacing
+them helps make code portable and be compilable with non-gcc compilers
+additionally fix the diagnostic messages clang reported
+
+source/c_gpio.c:130:18: warning: comparison of distinct pointer types
+('volatile uint32_t *' (aka 'volatile unsigned int *') an
+d 'void *') [-Wcompare-distinct-pointer-types]
+    if (gpio_map < MAP_FAILED)
+        ~~~~~~~~ ^ ~~~~~~~~~~
+
+        source/c_gpio.c:89:13: warning: variable 'peri_base' is used
+uninitialized whenever 'if' condition is false [-Wsometimes-uninit
+ialized]
+        if (fread(buf, 1, sizeof buf, fp) == sizeof buf) {
+            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+source/c_gpio.c:116:17: note: uninitialized use occurs here
+    gpio_base = peri_base + GPIO_BASE_OFFSET;
+                ^~~~~~~~~
+source/c_gpio.c:89:9: note: remove the 'if' if its condition is always
+true
+        if (fread(buf, 1, sizeof buf, fp) == sizeof buf) {
+        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+source/c_gpio.c:64:23: note: initialize the variable 'peri_base' to
+silence this warning
+    uint32_t peri_base;
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ source/c_gpio.c  |   6 +--
+ source/py_gpio.c | 135 ++++++++++++++++++++++++++++---------------------------
+ 2 files changed, 71 insertions(+), 70 deletions(-)
+
+diff --git a/source/c_gpio.c b/source/c_gpio.c
+index c96a2b0..b69880f 100644
+--- a/source/c_gpio.c
++++ b/source/c_gpio.c
+@@ -61,7 +61,7 @@ int setup(void)
+ {
+     int mem_fd;
+     uint8_t *gpio_mem;
+-    uint32_t peri_base;
++    uint32_t peri_base = 0;
+     uint32_t gpio_base;
+     unsigned char buf[4];
+     FILE *fp;
+@@ -73,7 +73,7 @@ int setup(void)
+     if ((mem_fd = open("/dev/gpiomem", O_RDWR|O_SYNC)) > 0)
+     {
+         gpio_map = (uint32_t *)mmap(NULL, BLOCK_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, mem_fd, 0);
+-        if ((uint32_t)gpio_map < 0) {
++        if (gpio_map == MAP_FAILED) {
+             return SETUP_MMAP_FAIL;
+         } else {
+             return SETUP_OK;
+@@ -127,7 +127,7 @@ int setup(void)
+ 
+     gpio_map = (uint32_t *)mmap( (void *)gpio_mem, BLOCK_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_FIXED, mem_fd, gpio_base);
+ 
+-    if ((uint32_t)gpio_map < 0)
++    if (gpio_map == MAP_FAILED)
+         return SETUP_MMAP_FAIL;
+ 
+     return SETUP_OK;
+diff --git a/source/py_gpio.c b/source/py_gpio.c
+index d54cc7f..007bad5 100644
+--- a/source/py_gpio.c
++++ b/source/py_gpio.c
+@@ -69,6 +69,20 @@ static int mmap_gpio_mem(void)
+       return 0;
+    }
+ }
++static inline int cleanup_one(unsigned int gpio)
++{
++   // clean up any /sys/class exports
++   event_cleanup(gpio);
++
++   // set everything back to input
++   if (gpio_direction[gpio] != -1) {
++      setup_gpio(gpio, INPUT, PUD_OFF);
++      gpio_direction[gpio] = -1;
++      return 1;
++   }
++   return 0;
++}
++
+ 
+ // python function cleanup(channel=None)
+ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+@@ -83,19 +97,6 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+    PyObject *tempobj;
+    static char *kwlist[] = {"channel", NULL};
+ 
+-   void cleanup_one(void)
+-   {
+-      // clean up any /sys/class exports
+-      event_cleanup(gpio);
+-
+-      // set everything back to input
+-      if (gpio_direction[gpio] != -1) {
+-         setup_gpio(gpio, INPUT, PUD_OFF);
+-         gpio_direction[gpio] = -1;
+-         found = 1;
+-      }
+-   }
+-
+    if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|O", kwlist, &chanlist))
+       return NULL;
+ 
+@@ -140,7 +141,7 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+       } else if (channel != -666) {    // channel was an int indicating single channel
+          if (get_gpio_number(channel, &gpio))
+             return NULL;
+-         cleanup_one();
++         found = cleanup_one(gpio);
+       } else {  // channel was a list/tuple
+          for (i=0; i<chancount; i++) {
+             if (chanlist) {
+@@ -169,7 +170,7 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+ 
+             if (get_gpio_number(channel, &gpio))
+                return NULL;
+-            cleanup_one();
++            found = cleanup_one(gpio);
+          }
+       }
+    }
+@@ -182,6 +183,37 @@ static PyObject *py_cleanup(PyObject *self, PyObject *args, PyObject *kwargs)
+    Py_RETURN_NONE;
+ }
+ 
++static inline int setup_one(unsigned int *gpio, int channel, int pud, int direction, int initial) {
++   if (get_gpio_number(channel, gpio))
++      return 0;
++
++   int func = gpio_function(*gpio);
++   if (gpio_warnings &&                             // warnings enabled and
++       ((func != 0 && func != 1) ||                 // (already one of the alt functions or
++       (gpio_direction[*gpio] == -1 && func == 1)))  // already an output not set from this program)
++   {
++      PyErr_WarnEx(NULL, "This channel is already in use, continuing anyway.  Use GPIO.setwarnings(False) to disable warnings.", 1);
++   }
++
++   // warn about pull/up down on i2c channels
++   if (gpio_warnings) {
++      if (rpiinfo.p1_revision == 0) { // compute module - do nothing
++      } else if ((rpiinfo.p1_revision == 1 && (*gpio == 0 || *gpio == 1)) ||
++                 (*gpio == 2 || *gpio == 3)) {
++         if (pud == PUD_UP || pud == PUD_DOWN)
++            PyErr_WarnEx(NULL, "A physical pull up resistor is fitted on this channel!", 1);
++      }
++   }
++
++   if (direction == OUTPUT && (initial == LOW || initial == HIGH)) {
++      output_gpio(*gpio, initial);
++   }
++   setup_gpio(*gpio, direction, pud);
++   gpio_direction[*gpio] = direction;
++   return 1;
++}
++
++
+ // python function setup(channel(s), direction, pull_up_down=PUD_OFF, initial=None)
+ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwargs)
+ {
+@@ -195,37 +227,6 @@ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwar
+    int pud = PUD_OFF + PY_PUD_CONST_OFFSET;
+    int initial = -1;
+    static char *kwlist[] = {"channel", "direction", "pull_up_down", "initial", NULL};
+-   int func;
+-
+-   int setup_one(void) {
+-      if (get_gpio_number(channel, &gpio))
+-         return 0;
+-
+-      func = gpio_function(gpio);
+-      if (gpio_warnings &&                             // warnings enabled and
+-          ((func != 0 && func != 1) ||                 // (already one of the alt functions or
+-          (gpio_direction[gpio] == -1 && func == 1)))  // already an output not set from this program)
+-      {
+-         PyErr_WarnEx(NULL, "This channel is already in use, continuing anyway.  Use GPIO.setwarnings(False) to disable warnings.", 1);
+-      }
+-
+-      // warn about pull/up down on i2c channels
+-      if (gpio_warnings) {
+-         if (rpiinfo.p1_revision == 0) { // compute module - do nothing
+-         } else if ((rpiinfo.p1_revision == 1 && (gpio == 0 || gpio == 1)) ||
+-                    (gpio == 2 || gpio == 3)) {
+-            if (pud == PUD_UP || pud == PUD_DOWN)
+-               PyErr_WarnEx(NULL, "A physical pull up resistor is fitted on this channel!", 1);
+-         }
+-      }
+-
+-      if (direction == OUTPUT && (initial == LOW || initial == HIGH)) {
+-         output_gpio(gpio, initial);
+-      }
+-      setup_gpio(gpio, direction, pud);
+-      gpio_direction[gpio] = direction;
+-      return 1;
+-   }
+ 
+    if (!PyArg_ParseTupleAndKeywords(args, kwargs, "Oi|ii", kwlist, &chanlist, &direction, &pud, &initial))
+       return NULL;
+@@ -290,7 +291,7 @@ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwar
+    } else if (chantuple) {
+        chancount = PyTuple_Size(chantuple);
+    } else {
+-       if (!setup_one())
++       if (!setup_one(&gpio, channel, pud, direction, initial))
+           return NULL;
+        Py_RETURN_NONE;
+    }
+@@ -320,12 +321,29 @@ static PyObject *py_setup_channel(PyObject *self, PyObject *args, PyObject *kwar
+           return NULL;
+       }
+ 
+-      if (!setup_one())
++      if (!setup_one(&gpio, channel, pud, direction, initial))
+          return NULL;
+    }
+ 
+    Py_RETURN_NONE;
+ }
++static inline int output_val(unsigned int *gpio, int channel, int value) {
++   if (get_gpio_number(channel, gpio))
++       return 0;
++
++   if (gpio_direction[*gpio] != OUTPUT)
++   {
++      PyErr_SetString(PyExc_RuntimeError, "The GPIO channel has not been set up as an OUTPUT");
++      return 0;
++   }
++
++   if (check_gpio_priv())
++      return 0;
++
++   output_gpio(*gpio, value);
++   return 1;
++}
++
+ 
+ // python function output(channel(s), value(s))
+ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+@@ -342,23 +360,6 @@ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+    int chancount = -1;
+    int valuecount = -1;
+ 
+-   int output(void) {
+-      if (get_gpio_number(channel, &gpio))
+-          return 0;
+-
+-      if (gpio_direction[gpio] != OUTPUT)
+-      {
+-         PyErr_SetString(PyExc_RuntimeError, "The GPIO channel has not been set up as an OUTPUT");
+-         return 0;
+-      }
+-
+-      if (check_gpio_priv())
+-         return 0;
+-
+-      output_gpio(gpio, value);
+-      return 1;
+-   }
+-
+    if (!PyArg_ParseTuple(args, "OO", &chanlist, &valuelist))
+        return NULL;
+ 
+@@ -416,7 +417,7 @@ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+    }
+ 
+    if (chancount == -1) {
+-      if (!output())
++      if (!output_val(&gpio, channel, value))
+          return NULL;
+       Py_RETURN_NONE;
+    }
+@@ -472,7 +473,7 @@ static PyObject *py_output_gpio(PyObject *self, PyObject *args)
+               return NULL;
+           }
+       }
+-      if (!output())
++      if (!output_val(&gpio, channel, value))
+          return NULL;
+    }
+ 
+-- 
+2.7.0
+
diff --git a/recipes-devtools/python/rpi-gpio_0.5.11.bb b/recipes-devtools/python/rpi-gpio_0.6.1.bb
similarity index 70%
rename from recipes-devtools/python/rpi-gpio_0.5.11.bb
rename to recipes-devtools/python/rpi-gpio_0.6.1.bb
index bca31cc..89f601b 100644
--- a/recipes-devtools/python/rpi-gpio_0.5.11.bb
+++ b/recipes-devtools/python/rpi-gpio_0.6.1.bb
@@ -8,12 +8,14 @@ SRCNAME = "RPi.GPIO"
 
 SRC_URI = "\
           http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
+          file://0001-Remove-nested-functions.patch \
           "
+SRC_URI[md5sum] = "254d0443a436eb241367c487274e7197"
+SRC_URI[sha256sum] = "54e5fb06d9ea1a1389a497fb5a06dfa950c86303b0f4ba89b68c55999d1df064"
+
 S = "${WORKDIR}/${SRCNAME}-${PV}"
 
 inherit distutils
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRC_URI[md5sum] = "9dc3dab6ce2b7ccb833a866efb392821"
-SRC_URI[sha256sum] = "8d6f02da7f90e24512ad80ee4ccf34ef33687c88c47326f100cf7ac4d7ae4bf3"
-- 
2.7.0


